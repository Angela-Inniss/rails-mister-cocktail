class RemoveCocktailFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :cocktail, :string
  end
end
