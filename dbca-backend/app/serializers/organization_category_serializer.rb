class OrganizationCategorySerializer

  def initialize(organization_category_object)
    @organizationCategory = organization_category_object
  end

  def to_serialized_json
    options = {
      include: {
        organization: {
          only: [:name]
        },
        category: {
          only: [:name]
        }
      },
      except: [:updated_at, :created_at],
    }
    @organizationCategory.to_json(options)
  end

end
