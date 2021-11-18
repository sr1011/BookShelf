class RemoveSubscriptionIdFromBookCarts < ActiveRecord::Migration[5.2]
  def change
    remove_column :book_carts, :subscription_id, :integer
  end
end
