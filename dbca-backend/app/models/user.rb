class User < ActiveRecord::Base
  has_many :organizations
  has_secure_password
end
