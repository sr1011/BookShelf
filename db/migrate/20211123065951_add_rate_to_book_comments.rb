class AddRateToBookComments < ActiveRecord::Migration[5.2]
  def change
    add_column :book_comments, :rate, :float, default: 0
  end
end
