class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.boolean :paid, default: false
      t.integer :amount
      t.string :currency
      t.boolean :refunded, default: false
      t.integer :customer_id

      t.timestamps
    end
  end
end
