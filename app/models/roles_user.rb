class RolesUser < ActiveRecord::Base
  belongs_to :role, :autosave=>true
  belongs_to :user, :autosave=>true
  belongs_to :operator, :autosave=>true, :foreign_key=>:user_id
  accepts_nested_attributes_for :operator, :allow_destroy => true
end
