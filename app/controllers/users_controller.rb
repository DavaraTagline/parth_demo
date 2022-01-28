class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        redirect_to users_path
    end
    
    # def edit
    #     @user = User.find(params[:id])
    # end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, status: :see_other
    end

    private
    def user_params
      params.require(:user).permit(:username, :gender, :email, :state, :city, :hobby)
    end
end
