class AddCocktailRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :cocktail, foreign_key: true
  end
end
