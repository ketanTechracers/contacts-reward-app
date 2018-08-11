class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :contact_number
      t.string :name
      t.text :address

      t.timestamps
    end
    add_index :contacts, :contact_number, unique: true
  end
end
