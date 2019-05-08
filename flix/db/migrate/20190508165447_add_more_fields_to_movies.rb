class AddMoreFieldsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :duration, :string
    add_column :movies, :image_file_name, :string, default: ""
  end
end
