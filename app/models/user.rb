class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :surname,
                  :patronymic, :birthday, :city, :country, :phone
  
  # attr_accessible :title, :body
  validates :name, :email, :surname, :patronymic, :city, :country, 
            :presence => true, 
            :length => {:minimum => 2}
  
  validates :email, :uniqueness => true,
            :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }

  def isAdmin?
    self === User.first ? true : false
  end
end
