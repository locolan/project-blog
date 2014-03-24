class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  
  
  #confirms that each created username is unique
  validates :username, :uniqueness => true
end
