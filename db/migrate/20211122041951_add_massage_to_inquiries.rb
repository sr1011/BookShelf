class AddMassageToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :massage, :text
  end
end
