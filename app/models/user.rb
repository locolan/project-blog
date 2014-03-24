class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :username, :password, :password_confirmation
  
  
  #confirms that each created username is unique
  validates :username, :uniqueness => true
end
