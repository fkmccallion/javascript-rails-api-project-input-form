class OrganizationCategoriesController < ApplicationController

  def index
    organizationCategories = OrganizationCategory.all
    render json: OrganizationCategorySerializer.new(organizationCategories).to_serialized_json
  end

  def show
    organizationCategory = OrganizationCategory.find_by(id: params[:id])
    render json: OrganizationCategorySerializer.new(organizationCategory).to_serialized_json
  end

end
