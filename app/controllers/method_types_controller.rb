class MethodTypesController < ApplicationController
  # Cache static page
  caches_page :show
  
  def show
    @method_type = Project.find_by_slug(params[:project_slug]).api_types.where(:id => params[:api_id]).first.method_types.where(:id => params[:id]).first
  end
end