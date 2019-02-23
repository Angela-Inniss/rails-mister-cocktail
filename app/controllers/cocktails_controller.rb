class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

# create method and new methd are linked.
# the create method is executed in the new 'view' when the user actually
# clicks on "create/submit" in the form

  def create
    # creates cocktail instance
    @cocktail = Cocktail.create(cocktail_params)
    # if, when the user clicks submit the cocktail is saved
    # then go back to the show page of the newly created cocktail
    # which would be cocktail_path(@cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail) # passing an instance of cocktail
    else
    # if cocktail isnt created (bcz of an error or something)
    # stay on the page and show errors to user
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

   def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end


  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient)
  end
end
