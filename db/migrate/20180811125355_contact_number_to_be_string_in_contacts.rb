class ContactNumberToBeStringInContacts < ActiveRecord::Migration[5.2]
  def change
  	change_column :contacts, :contact_number, :string
  end
end
