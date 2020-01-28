class EventTagSerializer

  def initialize(event_tag_object)
    @eventTag = event_tag_object
  end

  def to_serialized_json
    options = {
      include: {
        event: {
          only: [:name]
        },
        tag: {
          only: [:name]
        }
      },
      except: [:updated_at, :created_at],
    }
    @eventTag.to_json(options)
  end

end
