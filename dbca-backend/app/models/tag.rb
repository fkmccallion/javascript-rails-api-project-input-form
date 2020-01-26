class Tag < ActiveRecord::Base
  has_many :organization_tags
  has_many :organizations, through: :organization_tags
end
