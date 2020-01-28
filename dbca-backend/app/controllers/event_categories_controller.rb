class EventCategoriesController < ApplicationController

  def index
    eventCategories = EventCategory.all
    render json: EventCategorySerializer.new(eventCategories).to_serialized_json
  end

  def show
    eventCategory = EventCategory.find_by(id: params[:id])
    render json: EventCategorySerializer.new(eventCategory).to_serialized_json
  end

end
