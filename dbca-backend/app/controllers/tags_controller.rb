class TagsController < ApplicationController

  def index
    tags = Tag.all
    render json: TagSerializer.new(tags).to_serialized_json
  end

  def show
    tag = Tag.find_by(id: params[:id])
    render json: TagSerializer.new(tag).to_serialized_json
  end
end
