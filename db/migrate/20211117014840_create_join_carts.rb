class CreateJoinCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_carts do |t|
      t.integer :user_id
      t.integer :subscription_id

      t.timestamps
    end
  end
end
