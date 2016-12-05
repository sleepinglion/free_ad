class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|      
      t.references :user
      t.references :article_category    
      t.string :title, :null=>false, :limit=>60
      t.string :description, :null=>false, :limit=>255
      t.string :photo, :limit=>100      
      t.integer :view_count, :null=>false, :default => 0
      t.integer :recommned_count, :null=>false, :default=>0
      t.integer :community_comments_count, :null=>false, :default=>0      
      t.boolean :enable, :null=>false, :default=>false
      t.timestamps
    end

    create_table :article_contents do |t|
      t.boolean :html,:default=>0,:null=>false
      t.text :content,:null=>false
    end

    add_foreign_key :articles, :users, on_delete: :cascade, on_update: :cascade
    add_foreign_key :articles, :article_categories, on_delete: :cascade, on_update: :cascade 
    add_foreign_key :article_contents,:articles,column: :id, on_delete: :cascade, on_update: :cascade
  end
end
