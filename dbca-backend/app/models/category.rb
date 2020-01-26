class Category < ActiveRecord::Base
  has_many :organization_categories
  has_many :organizations, through: :organization_categories
  has_many :event_categories
  has_many :events, through: :event_categories
end
