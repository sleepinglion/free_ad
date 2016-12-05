class ArticleContent < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :article, :foreign_key => :id, :autosave=>true 
end
