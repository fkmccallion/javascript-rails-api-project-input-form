class Event < ActiveRecord::Base
  belongs_to :organization
  belongs_to :hour
  has_many :event_categories
  has_many :categories, through: :event_categories
  has_many :event_tags
  has_many :tags, through: :event_tags
end
