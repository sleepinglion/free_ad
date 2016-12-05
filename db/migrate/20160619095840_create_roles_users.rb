class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.references :role, :user
    end

    add_foreign_key :roles_users, :roles, on_delete: :cascade, on_update: :cascade 
    add_foreign_key :roles_users, :users, on_delete: :cascade, on_update: :cascade 
    add_index :roles_users, :user_id, :unique=>true
    add_index :roles_users, [:role_id, :user_id], :unique=>true
  end
end
