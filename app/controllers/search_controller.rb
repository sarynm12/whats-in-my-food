class SearchController < ApplicationController

  def index
    @foods = SearchFacade.new.find_foods(params[:food])
  end

end
