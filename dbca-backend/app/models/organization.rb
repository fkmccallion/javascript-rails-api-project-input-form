class Organization < ApplicationRecord
  belongs_to :user
  belongs_to :hour
  has_many :events
  has_many :organization_categories
  has_many :categories, through: :organization_categories
  has_many :organization_tags
  has_many :tags, through: :organization_tags
end
