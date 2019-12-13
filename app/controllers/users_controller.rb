class UsersController < ApplicationController
	def index
		@user = User.all
		authorize! :index, @user
	end

	def user_params
  	params.require(:user).permit(:email, :role)
	end
end
