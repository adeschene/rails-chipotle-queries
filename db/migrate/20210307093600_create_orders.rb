class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :quantity
      t.string :item_name
      t.string :choice_description
      t.integer :item_price

      t.timestamps
    end
  end
end
