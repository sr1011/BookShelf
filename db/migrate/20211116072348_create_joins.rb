class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.integer :payment_method
      t.integer :billing_amount

      t.timestamps
    end
  end
end
