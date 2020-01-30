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
    Organization.create(name: params[:name], description: params[:description])
    organizations = Organization.all
    render json: OrganizationSerializer.new(organizations).to_serialized_json
  end

  def update
    organization = Organization.find_by(id: params[:id])
    organization.update(rank: params[:rank])
    render json: OrganizationSerializer.new(organization).to_serialized_json
  end

end
