class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :user
      t.string :references
      t.string :cocktail
      t.string :references

      t.timestamps
    end
  end
end
