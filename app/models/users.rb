class Users < ActiveRecord::Base
  attr_accessible :name, :secure_password
end
