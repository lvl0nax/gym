class Question < ActiveRecord::Base
	has_one :answer
  attr_accessible :content, :name, :title
end
