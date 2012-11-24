class Article < ActiveRecord::Base
  attr_accessible :description, :meta_desc, :meta_key, :meta_title, :name, :photo
end
