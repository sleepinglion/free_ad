class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable, :timeoutable
  validates_uniqueness_of :email,:nickname  
  validates_length_of :nickname, :within => 4..60
  validates_length_of :password, :within => 5..255
  validates_presence_of :email, :nickname, :password, :password_confirmation, :on=>[:create]
  validates_confirmation_of :password
  has_many :shopping, :dependent=>:destroy
  has_many :order, :dependent=>:destroy
  has_many :user_login_log, :dependent=>:destroy
  
  has_many :roles_user
  has_many :role, :through=> :roles_admin
  
  def role?(role)
    return !!self.role.find_by_title(role)
  end
end