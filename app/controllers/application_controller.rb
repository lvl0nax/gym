# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init_menu

  def init_menu
    #@about = Infopage.where(:tag => "about").first
    @contacts = Page.where((:title).downcase => "контакты").first
    @pages = Page.all.to_a
    @pages.delete(@contacts)
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
end
