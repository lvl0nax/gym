class Page < ActiveRecord::Base
  attr_accessible :content, :meta_desc, :meta_key, :meta_title, :title, :image, :top_page, :position
  mount_uploader :image, ImageUploader
  #extend FriendlyId
  #friendly_id :make_slug, use: :slugged
  #
  #def make_slug
  #  (Integer(title.parameterize) rescue false) ? "object-#{title}" : title
  #end
end
