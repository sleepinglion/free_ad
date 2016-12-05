class CreateArticleComments < ActiveRecord::Migration
  def change
    create_table :article_comments do |t|
      t.references :user
      t.references :article, :null=>false      
      t.string :name,:limit=>60
      t.string :encrypted_password,:limit=>40
      t.string :salt,:limit=>40
      t.text :content,:null=>false
      t.timestamps :null=>false
    end
    
    add_foreign_key :article_comments, :users, on_delete: :cascade, on_update: :cascade    
    add_foreign_key :article_comments, :articles, on_delete: :cascade, on_update: :cascade      
  end
end