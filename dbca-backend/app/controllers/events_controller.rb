class EventsController < ApplicationController

  def index
    events = Event.all
    render json: EventSerializer.new(events).to_serialized_json
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: EventSerializer.new(event).to_serialized_json
  end

  def create
    # need to move logic to model or module
    cat = Category.find_or_create_by(name: params[:category])
    tag = Tag.find_or_create_by(name: params[:tag])
    event = Event.create(name: params[:name], description: params[:description], image: params[:image], rank: 1)
    EventCategory.create(event_id: event.id, category_id: cat.id)
    EventTag.create(event_id: event.id, tag_id: tag.id)
    events = Event.all
    render json: EventSerializer.new(events).to_serialized_json
  end

  def update
    event = Event.find_by(id: params[:id])
    event.update(rank: params[:rank])
    render json: EventSerializer.new(event).to_serialized_json
  end

end
