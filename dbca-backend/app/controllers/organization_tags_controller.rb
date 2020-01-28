class OrganizationTagsController < ApplicationController

  def index
    organizationTags = OrganizationTag.all
    render json: OrganizationTagSerializer.new(organizationTags).to_serialized_json
  end

  def show
    organizationTag = OrganizationCategory.find_by(id: params[:id])
    render json: OrganizationTagSerializer.new(organizationTag).to_serialized_json
  end

end
