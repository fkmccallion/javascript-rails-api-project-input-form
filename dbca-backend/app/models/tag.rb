class Tag < ActiveRecord::Base
  has_many :organization_tags
  has_many :organizations, through: :organization_tags
  has_many :event_tags
  has_many :events, through: :event_tags
end
