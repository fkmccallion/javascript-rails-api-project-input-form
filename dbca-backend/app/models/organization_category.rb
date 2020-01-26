class OrganizationCategory < ActiveRecord::Base
  belongs_to :organization
  belongs_to :category
end
