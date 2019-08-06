class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def is_admin?
    return false if self.permission_level.nil?
    self.permission_level >= 9
end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
end
