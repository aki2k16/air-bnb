class AddReferencesToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :room, foreign_key: true
  end
end
