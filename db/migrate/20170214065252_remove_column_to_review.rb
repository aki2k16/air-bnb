class RemoveColumnToReview < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :image_url, :string
  end
end
