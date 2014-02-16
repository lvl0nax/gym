class Pic < ActiveRecord::Base
  belongs_to :album
  attr_accessible :description, :alt, :photo
  mount_uploader :photo, PhotoUploader
end
