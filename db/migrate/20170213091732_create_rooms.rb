class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :listing
      t.string :image_url
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true
      t.timestamps
    end
  end
end
