class UsersController < ApplicationController
	def index
		@user = User.all
		authorize! :index, @user
	end

	def show
		binding.pry
		@user = User.find(params[:id])

		# authorize! :show, @user
	end

	def user_params
  	params.require(:user).permit(:email, :role, :image)
	end
end
