class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :genre_id
      t.integer :review_id
      t.integer :favorite_id
      t.string :name
      t.string :descript
      t.string :image_id

      t.timestamps
    end
  end
end
