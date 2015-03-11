class CreateClientRoles < ActiveRecord::Migration
  def change
    create_table :client_roles do |t|
      t.references :client, index: true
      t.references :role, index: true

      t.timestamps null: false
    end
    add_foreign_key :client_roles, :clients
    add_foreign_key :client_roles, :roles
  end
end
