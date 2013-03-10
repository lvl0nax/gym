class Instructor < ActiveRecord::Base
  belongs_to :filial
  attr_accessible :description, :meta_desc, :meta_key, :meta_title, :name, :photo, :filial_id, :shortdesc
  mount_uploader :photo, PhotoUploader

end
