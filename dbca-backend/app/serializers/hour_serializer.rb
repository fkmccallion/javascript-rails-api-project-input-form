class HourSerializer

  def initialize(hour_object)
    @hour = hour_object
  end

  def to_serialized_json
    options = {
      except: [:updated_at, :created_at],
    }
    @hour.to_json(options)
  end

end
