class Picture < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
  attr_accessible :alt, :description, :photo
end
