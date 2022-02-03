class UsersController < ApplicationController
    
    def index
        @users = User.order(:id)
    end

    def new
        @user = User.new
        # @stateid = params[:id]
        # puts @stateid.inspect
        # @cities = State.find(6).cities
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_path
        else
            render :new
        end
    end
    
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_path
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, status: :see_other
    end

    private
    def user_params
      params.require(:user).permit(:username, :gender, :email, :state_id, :city_id, :hobby => [])
    end
end
