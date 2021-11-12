class AddIsActiveToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :is_active, :boolean
  end
end
