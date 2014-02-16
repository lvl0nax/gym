class Banner < ActiveRecord::Base
  attr_accessible :link_url, :pic, :position
  mount_uploader :pic, PicUploader
end
