class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :user_id
      t.string :title
      t.text :massege

      t.timestamps
    end
  end
end
