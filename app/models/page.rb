class Page < ActiveRecord::Base
  attr_accessible :content, :meta_desc, :meta_key, :meta_title, :title
end
