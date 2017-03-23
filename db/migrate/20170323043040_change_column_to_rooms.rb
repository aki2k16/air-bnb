class ChangeColumnToRooms < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :rooms, :reviews
    remove_index :rooms, :review_id
    remove_reference :rooms, :review
  end
end
