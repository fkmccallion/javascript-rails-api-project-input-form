class OrganizationSerializer

  def initialize(organization_object)
    @organization = organization_object
  end

  def to_serialized_json
    options = {
      include: {
        user: {
          only: [:email]
        },
        hour: {
          only: [:sunStart, :sunEnd, :monStart, :monEnd, :tueStart, :tueEnd, :wedStart, :wedEnd, :thuStart, :thuEnd, :friStart, :friEnd, :satStart, :satEnd]
        }
      },
      except: [:updated_at, :created_at],
    }
    @organization.to_json(options)
  end

end
