class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.decimal :total_item_price
      t.references :discount, foreign_key: true
      t.decimal :discount_price
      t.decimal :delivery_cost
      t.decimal :total_price

      t.timestamps
    end
  end
end
