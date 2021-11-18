class AddPaymentMethodToJoinCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :join_carts, :payment_method, :integer
  end
end
