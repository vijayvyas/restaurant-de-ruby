class CreateUserOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_orders do |t|
      t.integer :order_id
      t.integer :price
      t.string :item_name
      t.string :user_name
      t.string :user_phone
      t.text :user_address

      t.timestamps
    end
  end
end
