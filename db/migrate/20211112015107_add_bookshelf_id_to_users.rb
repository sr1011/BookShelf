class AddBookshelfIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bookshelf_id, :integer
  end
end
