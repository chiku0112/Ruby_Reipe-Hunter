class RecipesController < ApplicationController
  def index
    @search = params[:search] || 'bread paneer'
    @recipes= Recipe.for(@search)
  end
end
