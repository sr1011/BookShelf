class CreateBookCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :book_carts do |t|
      t.integer :user_id
      t.integer :subscription_id

      t.timestamps
    end
  end
end
