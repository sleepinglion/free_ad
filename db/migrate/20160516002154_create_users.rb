class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null=>false, :limit=>100
      t.string :nickname, :null => false, :limit=>40
      t.string :encrypted_password, :null => false, :limit=>60  
      t.string :phone, :limit=>20
      t.date :birthday
      t.boolean :sex, :default=>false
      t.string :photo, :limit=>100        
      t.boolean :enable, :null=>false, :default=>false      
      t.timestamps :null=>false
    end

    add_index :users, :email, :unique => true
    add_index :users, :nickname, :unique => true    
  end
end
