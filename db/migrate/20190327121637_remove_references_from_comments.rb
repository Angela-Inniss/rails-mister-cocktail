class RemoveReferencesFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :references, :string
  end
end
