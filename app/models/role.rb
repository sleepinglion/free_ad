class Role < ActiveRecord::Base
  validates_presence_of :title
  has_many :roles_user, :dependent=>:destroy
  has_many :user, :through=> :roles_user, :dependent=>:destroy
  has_many :operator, :through=> :roles_user, :dependent=>:destroy
end
