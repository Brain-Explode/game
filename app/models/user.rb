class User < ApplicationRecord
	has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :assign_default_rolez

  def assign_default_role
    self.role = "player"
  end
end
