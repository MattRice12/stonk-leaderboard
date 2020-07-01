class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.string :ticker, null: false
      t.integer :quantity, null: false
      t.float :price, null: false

      t.string :order_type, null: false
      t.index :order_type

      t.integer :user_id
      t.index :user_id

      t.timestamps
    end
  end
end
