
class WelcomeController < ApplicationController
  def index
  end
  def search
    precision = false
    condition = nil

    precision = true if params["Precision"]
    condition = "AND" if params["Match All"]
    @data = DataArray.new

    @results = @data.search_by params["search"], nil, condition, precision if params["search"]

    @results = @data.search_by params["Name"], "Name", condition, precision unless params["Name"]==""
    @results = @data.search_by params["Type"], "Type", condition, precision unless params["Type"]==""
    @results = @data.search_by params["Designed by"], "Designed by", condition, precision unless params["Designed by"]==""

    respond_to do |format|
      format.js
    end
  end
end
