# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init_menu

  def init_menu
    #@about = Infopage.where(:tag => "about").first
    @contacts = Page.where((:title).downcase => "контакты").first
    @pages = Page.all.to_a
    @pages.delete(@contacts)
    @count = Question.where("id not in (select question_id from answers)").count
  end

  def admin_require
    unless is_admin?
      deny_access
    end
  end

  def deny_access
    flash[:error] = "you have no accessible rights access denied."
    redirect_to root_path #root_url
  end


  def is_admin?
    if current_user
      !!current_user.isAdmin?
    else
      return false
    end
  end

  protected

    def ckeditor_pictures_scope(options = {})
      ckeditor_filebrowser_scope(options)
    end

    def ckeditor_attachment_files_scope(options = {})
      ckeditor_filebrowser_scope(options)
    end

  # protected

  #   def ckeditor_filebrowser_scope(options = {})
  #     super({ :assetable_id => current_user.id, :assetable_type => 'User' }.merge(options))
  #   end
end
