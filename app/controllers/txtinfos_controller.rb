class TxtinfosController < ApplicationController
  before_filter :admin_require
  # GET /txtinfos
  # GET /txtinfos.json
  def index
    @txtinfos = Txtinfo.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @txtinfos }
    end
  end

  # GET /txtinfos/1
  # GET /txtinfos/1.json
  def show
    @txtinfo = Txtinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @txtinfo }
    end
  end

  # GET /txtinfos/new
  # GET /txtinfos/new.json
  def new
    @txtinfo = Txtinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @txtinfo }
    end
  end

  # GET /txtinfos/1/edit
  def edit
    @txtinfo = Txtinfo.find(params[:id])
  end

  # POST /txtinfos
  # POST /txtinfos.json
  def create
    @txtinfo = Txtinfo.new(params[:txtinfo])

    respond_to do |format|
      if @txtinfo.save
        format.html { redirect_to @txtinfo, notice: 'Txtinfo was successfully created.' }
        format.json { render json: @txtinfo, status: :created, location: @txtinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @txtinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /txtinfos/1
  # PUT /txtinfos/1.json
  def update
    @txtinfo = Txtinfo.find(params[:id])

    respond_to do |format|
      if @txtinfo.update_attributes(params[:txtinfo])
        format.html { redirect_to @txtinfo, notice: 'Txtinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @txtinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /txtinfos/1
  # DELETE /txtinfos/1.json
  def destroy
    @txtinfo = Txtinfo.find(params[:id])
    @txtinfo.destroy

    respond_to do |format|
      format.html { redirect_to txtinfos_url }
      format.json { head :no_content }
    end
  end
end
