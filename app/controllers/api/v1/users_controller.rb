class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    def index
        @users = User.all 
        render json:@users
    end

    def create

    end

    def show
        render json: @user
    end

    def update
    end

    def destroy
    end

    private 

    

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
end
