class TagSerializer

  def initialize(tag_object)
    @tag = tag_object
  end

  def to_serialized_json
    options = {
      except: [:updated_at, :created_at],
    }
    @tag.to_json(options)
  end

end
