class ArticleCategory < ActiveRecord::Base
  validates_presence_of :title, :user_id
  validates_length_of :title, :minimum => 1, :maximum => 60, :allow_blank => true  
  belongs_to :article_category
  belongs_to :user, :autosave=>true
  has_many :article_category, :dependent=>:destroy
  has_many :article, :dependent=>:destroy
#  translates :title
end
