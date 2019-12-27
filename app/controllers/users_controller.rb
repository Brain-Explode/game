class UsersController < ApplicationController
	def index
		@user = User.all
		authorize! :index, @user
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user
		else
			render 'show'
		end
	end


	def user_params
  	params.require(:user).permit(:email, :role, :image)
	end
end
