class PagesController < ApplicationController
  def home
    @coktails = Cocktail.all
  end
end
