class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.string :image_url
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
