class EventCategorySerializer

  def initialize(event_category_object)
    @eventCategory = event_category_object
  end

  def to_serialized_json
    options = {
      include: {
        event: {
          only: [:name]
        },
        category: {
          only: [:name]
        }
      },
      except: [:updated_at, :created_at],
    }
    @eventCategory.to_json(options)
  end

end
