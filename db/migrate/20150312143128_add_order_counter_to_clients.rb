class AddOrderCounterToClients < ActiveRecord::Migration
  def change
    add_column :clients, :orders_count, :integer
  end
end
