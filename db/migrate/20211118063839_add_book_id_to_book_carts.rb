class AddBookIdToBookCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :book_carts, :book_id, :integer
  end
end
