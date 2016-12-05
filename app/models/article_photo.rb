require 'carrierwave/orm/activerecord'

class ArticlePhoto < ActiveRecord::Base
  validates_presence_of :photo, :alt
  belongs_to :article, :autosave=>true
  accepts_nested_attributes_for :article, :allow_destroy => true  
  mount_uploader :photo, ArticlePhotoUploader  
end
