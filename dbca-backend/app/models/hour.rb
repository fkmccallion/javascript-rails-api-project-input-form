class Hour < ActiveRecord::Base
  has_many :organizations
  has_many :events
end
