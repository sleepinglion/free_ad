class ArticleComment < ActiveRecord::Base
  validates_presence_of  :content
  belongs_to :article, :autosave=>true, :counter_cache=>true
  belongs_to :user, :autosave=>true
  accepts_nested_attributes_for :article, :allow_destroy => true
end
