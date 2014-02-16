class Appointment < ActiveRecord::Base
  belongs_to :seminar
  attr_accessible :comment, :email, :name, :phone, :surname
end
