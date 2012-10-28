class Seminar < ActiveRecord::Base
  attr_accessible :content, :meta_desc, :meta_key, :meta_title, :shortc, :title
end
