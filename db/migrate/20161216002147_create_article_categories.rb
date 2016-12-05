class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
      t.references :user, :null=>false
      t.references :article_category
      t.string :title, :null=>false, :limit=>60
      t.integer :articles_count, :null=>false, :default=>false
      t.integer :article_categories_count, :null=>false, :default=>false
      t.boolean :enable, :null=>false, :default=>true
      t.boolean :leaf, :null=>false, :default=>true
      t.timestamps :null=>false
    end

    add_index :article_categories, :title,  :unique => true
    add_index :article_categories, :article_category_id
    add_index :article_categories, :user_id
  end
end
