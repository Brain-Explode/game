class User < ApplicationRecord
	has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :assign_default_role

  def assign_default_role
	if self.role == nil
		self.role = "player"
	end
  end
end
