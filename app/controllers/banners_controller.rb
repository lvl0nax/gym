class BannersController < ApplicationController
  before_filter :admin_require

  def new
    @banner = Banner.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @banner = Banner.find(params[:id])
  end

  def index
    @banners = Banner.all
  end

  def create
    @banner = Banner.new(params[:banner])
    respond_to do |format|
      if @banner.save!
        format.html { redirect_to root_url, notice: 'Picture was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    @banner = Banner.find(params[:id])
    respond_to do |format|
      if @banner.update_attributes(params[:banner])
        format.html { redirect_to root_url, notice: 'Picture was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    Banner.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
