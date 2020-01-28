class EventTagsController < ApplicationController

  def index
    eventTags = EventTag.all
    render json: EventTagSerializer.new(eventTags).to_serialized_json
  end

  def show
    eventTag = EventTag.find_by(id: params[:id])
    render json: EventTagSerializer.new(eventTag).to_serialized_json
  end

end
