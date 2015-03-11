class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :description
      t.integer :price
      t.integer :quantity
      t.references :client, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :clients
  end
end
