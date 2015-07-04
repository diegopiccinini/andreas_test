
class WelcomeController < ApplicationController
  def index
  end
  def search
    @data = DataArray.new
    @results = @data.search_by params["search"]
    respond_to do |format|
      format.js
    end
  end
end
