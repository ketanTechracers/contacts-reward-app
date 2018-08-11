class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.decimal :purchase_amout
      t.decimal :reward_points
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
