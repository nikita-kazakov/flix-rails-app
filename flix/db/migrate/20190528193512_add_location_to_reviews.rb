class AddLocationToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :location, :string
  end
end
