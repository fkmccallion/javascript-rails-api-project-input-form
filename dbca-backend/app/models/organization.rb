class Organization < ActiveRecord::Base
  belongs_to :user
  belongs_to :hour
  has_many :events
end
