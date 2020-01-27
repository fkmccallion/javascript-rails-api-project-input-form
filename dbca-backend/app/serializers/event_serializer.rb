class EventSerializer

  def initialize(event_object)
    @event = event_object
  end

  def to_serialized_json
    options = {
      include: {
        organization: {
          only: [:id, :name]
        }
      },
      except: [:updated_at, :created_at],
    }
    @event.to_json(options)
  end

end
