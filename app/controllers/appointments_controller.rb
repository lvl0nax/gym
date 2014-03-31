# -*- encoding : utf-8 -*-
class AppointmentsController < ApplicationController
  before_filter :admin_require, :except => [:create, :new]

  def index
    @appointments = Appointment.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def new
    @appointment = Appointment.new

    respond_to do |format|
      format.html { render layout: false } # new.html.erb
      format.json { render json: @appointment }
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(params[:question])

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to root_url, notice: 'Appointment was successfully created.' }
        format.json { render json: @appointment, status: :created, location: @appointment }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:question])
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    Appointment.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to appointments_url }
      format.json { head :no_content }
    end
  end

end
