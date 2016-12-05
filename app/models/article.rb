class Article < ActiveRecord::Base
  is_impressionable
  validates_presence_of :title, :user_id, :description
  validates_length_of :title, :minimum => 4, :maximum => 60, :allow_blank => true
  belongs_to :user, :autosave=>true    
  has_one :article_content, :foreign_key => :id, :dependent => :destroy
  has_many :article_photo, :dependent=> :destroy
  has_many :article_comment, :dependent=> :destroy  
  accepts_nested_attributes_for :article_content, :allow_destroy => true
end