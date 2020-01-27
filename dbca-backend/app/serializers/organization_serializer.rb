class OrganizationSerializer

  def initialize(organization_object)
    @organization = organization_object
  end

  def to_serialized_json
    options = {
      include: {
        user: {
          only: [:email]
        }
      },
      except: [:updated_at, :created_at],
    }
    @organization.to_json(options)
  end

end
