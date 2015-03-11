class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :postcode
      t.references :client, index: true

      t.timestamps null: false
    end
    add_foreign_key :addresses, :clients
  end
end
