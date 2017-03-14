class AddPrefectureToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :prefecture, :string
  end
end
