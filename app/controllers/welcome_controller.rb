
class WelcomeController < ApplicationController
  def index
  end
  def search
    # precision by default false, true is case sentitive
    precision = false
    precision = true if params["Precision"]

    @data = DataArray.new
    # the field search is a free text search in all fields, so there aren't conditions to exclude fields
    @results = @data.search_by params["search"], nil, nil, precision

    # set all fields and get the result
    set_search_fields(["Name","Type","Designed by"], precision)

    respond_to do |format|
      format.js
    end
  end

  private
    # set fields refactor for apply DRY
    # @param fields [Array] with the name of fields
    # @param precision [Boolean]
    def set_search_fields(fields, precision)
      condition = nil
      # when the results have match with all fields
      condition = "AND" if params["Match all"]
      fields.each do |field|
          @results = @data.search_by params[field], field, condition, precision unless params[field]==""
      end
    end
end
