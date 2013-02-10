class PicsController < ApplicationController
  before_filter :admin_require, :except => [:show]
  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = Pic.all
    @album = Album.find(params[:album_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    @picture = Pic.find(params[:id])
    @album = Album.find(params[:album_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.json
  def new
    @picture = Pic.new
    @album = Album.find(params[:album_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    @picture = Pic.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Pic.new(params[:pic])
    @picture.album = Album.find(params[:album_id])
    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture.album, notice: 'Picture was successfully created.' }
        format.json { render json: @picture, status: :created, location: @picture }
      else
        format.html { render action: "new" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.json
  def update
    @picture = Pic.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:pic])
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = Pic.find(params[:id])
    @album = Album.find(params[:album_id])
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end
end
