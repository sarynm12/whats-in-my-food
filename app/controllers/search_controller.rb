class SearchController < ApplicationController

  def index
    @searched_food = params[:q]
    @foods = SearchFacade.food_search(@searched_food)
  end

end
