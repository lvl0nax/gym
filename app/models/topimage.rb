class Topimage < ActiveRecord::Base
  attr_accessible :alt, :header, :slogan
  mount_uploader :header, HeaderUploader
end
