class RemoveColumnToRoom < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :image_url, :string
  end
end
