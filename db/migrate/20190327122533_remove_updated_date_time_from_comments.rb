class RemoveUpdatedDateTimeFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :updated_at, :datetime
  end
end
