class Category < ActiveRecord::Base
  has_many :organization_categories
  has_many :organizations, through: :organization_categories
end
