class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :paid, null: false, default: false
      t.integer :amount, null: false, default: 0
      t.string :currency, null: false, default: 'usd', limit: 5
      t.boolean :refunded, null: false, default: false
      t.references :customer

      t.timestamps
    end
  end
end
