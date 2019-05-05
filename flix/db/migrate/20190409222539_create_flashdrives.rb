class CreateFlashdrives < ActiveRecord::Migration[5.0]
  def change
    create_table :flashdrives do |t|
      t.string :model
      t.string :color
      t.integer :size
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
