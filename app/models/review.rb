class Review < ActiveRecord::Base
  attr_accessible :body, :name, :user

  validates :name, :body, 
            :presence => true, 
            :length => {:minimum => 2}
end
