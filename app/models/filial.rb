class Filial < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
  attr_accessible :content, :meta_desc, :meta_key, :meta_title, :shortc, :title, :photo
end
