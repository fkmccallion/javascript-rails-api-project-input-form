class OrganizationsController < ApplicationController

  def index
    organizations = Organization.all
    render json: OrganizationSerializer.new(organizations).to_serialized_json
  end

  def show
    organization = Organization.find_by(id: params[:id])
    render json: OrganizationSerializer.new(organization).to_serialized_json
  end

  def create
    # need to move logic to model or module
    cat = Category.find_or_create_by(name: params[:category])
    tag = Tag.find_or_create_by(name: params[:tag])
    org = Organization.create(name: params[:name], description: params[:description], image: params[:image], rank: 1)
    OrganizationCategory.create(organization_id: org.id, category_id: cat.id)
    OrganizationTag.create(organization_id: org.id, tag_id: tag.id)
    organizations = Organization.all
    render json: OrganizationSerializer.new(organizations).to_serialized_json
  end

  def update
    organization = Organization.find_by(id: params[:id])
    organization.update(rank: params[:rank])
    render json: OrganizationSerializer.new(organization).to_serialized_json
  end

end
