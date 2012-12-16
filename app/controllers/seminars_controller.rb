class SeminarsController < ApplicationController
  before_filter :admin_require, :except => [:show, :index]
  # GET /seminars
  # GET /seminars.json
  def index
    @seminars1 = Seminar.where(semtype: 1).all
    @seminars2 = Seminar.where(semtype: 2).all
    @txt1 = Txtinfo.where(tag: "program1").first
    @txt2 = Txtinfo.where(tag: "program2").first
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seminars }
    end
  end

  # GET /seminars/1
  # GET /seminars/1.json
  def show
    @seminar = Seminar.find(params[:id])

    respond_to do |format|
      format.html { render layout: false }# show.html.erb
      format.json { render json: @seminar }
    end
  end

  # GET /seminars/new
  # GET /seminars/new.json
  def new
    @seminar = Seminar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seminar }
    end
  end

  # GET /seminars/1/edit
  def edit
    @seminar = Seminar.find(params[:id])
  end

  # POST /seminars
  # POST /seminars.json
  def create
    @seminar = Seminar.new(params[:seminar])

    respond_to do |format|
      if @seminar.save
        format.html { redirect_to seminars_path, notice: 'Seminar was successfully created.' }
        format.json { render json: @seminar, status: :created, location: @seminar }
      else
        format.html { render action: "new" }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seminars/1
  # PUT /seminars/1.json
  def update
    @seminar = Seminar.find(params[:id])

    respond_to do |format|
      if @seminar.update_attributes(params[:seminar])
        format.html { redirect_to seminars_path, notice: 'Seminar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminars/1
  # DELETE /seminars/1.json
  def destroy
    @seminar = Seminar.find(params[:id])
    @seminar.destroy

    respond_to do |format|
      format.html { redirect_to seminars_url }
      format.json { head :no_content }
    end
  end
end
