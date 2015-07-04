
class WelcomeController < ApplicationController
  def index
  end
  def search
    @data = DataArray.new
    @results = @data.search_by params["search"] if params["search"]
    @results = @data.search_by params["Name"], "Name" if params["Name"]
    @results = @data.search_by params["Type"], "Type" if params["Type"]
    @results = @data.search_by params["Designed by"], "Designed by" if params["Designed by"]
    respond_to do |format|
      format.js
    end
  end
end
