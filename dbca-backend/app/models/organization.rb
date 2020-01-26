class Organization < ActiveRecord::Base
  belongs_to :user
  belongs_to :hour
end
