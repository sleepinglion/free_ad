class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.references :user
      t.string :title, :null=>false, :limit=>60
      t.string :description, :null=>false, :limit=>255      
      t.integer :view_count, :default => 0
      t.boolean :enable, :null=>false, :default=>false
      t.timestamps
    end

    create_table :communitiy_contents do |t|
      t.boolean :html,:default=>0,:null=>false
      t.text :content,:null=>false
    end

    add_foreign_key :communities, :users, on_delete: :cascade, on_update: :cascade
    add_foreign_key :communitiy_contents,:communities,column: :id, on_delete: :cascade, on_update: :cascade
  end
end
