class AddInfoToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :title, :string
    add_column :rooms, :guest, :string
    add_column :rooms, :bed, :string
    add_column :rooms, :bedroom, :string
    add_column :rooms, :price, :string
  end
end
