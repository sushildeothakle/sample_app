class UsersController < ApplicationController
def show
	@user= User.find(params[:id])
end
def new
	@title="sign up"
	
end
def create()
	User.create(user_params)
	
end


private
def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
