class Album < ActiveRecord::Base
  has_many :pics
  attr_accessible :description, :name
end
