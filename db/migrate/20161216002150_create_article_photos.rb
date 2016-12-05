class CreateArticlePhotos < ActiveRecord::Migration
  def change
    create_table :article_photos do |t|
      t.references :article, :null=>false
      t.string :photo, :null=>false
      t.string :alt,:limit=>60, :null=>false
      t.boolean :default, :null=>false, :default=>0
      t.boolean :enable, :null=>false, :default=>1
      t.timestamps :null=>false
    end
    
    add_foreign_key :article_photos, :articles, on_delete: :cascade, on_update: :cascade     
  end
end