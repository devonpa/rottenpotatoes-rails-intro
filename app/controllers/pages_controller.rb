class PagesController < ApplicationController
  def index
  	@users = CbcUser.find_by username: 'mayburncooks'
  	@recipes = Recipe.first(3)
  end
end
