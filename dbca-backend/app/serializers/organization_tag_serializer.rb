class OrganizationTagSerializer

  def initialize(organization_tag_object)
    @organizationTag = organization_tag_object
  end

  def to_serialized_json
    options = {
      include: {
        organization: {
          only: [:name]
        },
        tag: {
          only: [:name]
        }
      },
      except: [:updated_at, :created_at],
    }
    @organizationTag.to_json(options)
  end

end
