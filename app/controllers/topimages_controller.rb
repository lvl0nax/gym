# -*- encoding : utf-8 -*-
class TopimagesController < ApplicationController
  before_filter :admin_require

  def new
    @topimage = Topimage.new
    respond_to do |format|
      format.html {render layout: false}# new.html.erb
      format.json { render json: @topimage }
    end
  end

  def edit
    @topimage = Topimage.first
  end

  def create
    @topimage = Topimage.new(params[:topimage])
    respond_to do |format|
      if @topimage.save
        format.html { redirect_to root_url, notice: 'Topimage was successfully created.' }
        format.json { render json: @topimage, status: :created, location: @topimage }
      else
        format.html { render action: 'new' }
        format.json { render json: @topimage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @topimage = Topimage.first

    respond_to do |format|
      if @topimage.update_attributes(params[:topimage])
        format.html { redirect_to root_url, notice: 'Topimage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topimage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @topimage = Topimage.find(params[:id])
    @topimage.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end
