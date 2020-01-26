class Organization < ActiveRecord::Base
  belongs_to :user
  belongs_to :hour
  has_many :events
  has_many :organization_categories
  has_many :categories, through: :organization_categories
end
