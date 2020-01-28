class HoursController < ApplicationController

  def index
    hours = Hour.all
    render json: HourSerializer.new(hours).to_serialized_json
  end

  def show
    hour = Hour.find_by(id: params[:id])
    render json: HourSerializer.new(hour).to_serialized_json
  end

end
