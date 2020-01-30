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
    Event.create(name: params[:name], description: params[:description], image: params[:image], rank: 1)
    events = Event.all
    render json: EventSerializer.new(events).to_serialized_json
  end

  def update
    event = Event.find_by(id: params[:id])
    event.update(rank: params[:rank])
    render json: EventSerializer.new(event).to_serialized_json
  end

end
