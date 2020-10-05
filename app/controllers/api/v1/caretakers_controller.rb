class Api::V1::CaretakersController < ApplicationController
    before_action :set_caretaker, only: [:show, :update, :destroy]
    def index
        @caretakers = Caretaker.all 
        render json:@caretakers
    end

    def create
        @caretaker = Caretaker.new(caretaker_params)
    
            if @caretaker.save
                render json: @caretaker, status: :created, location: @dog
            else
                render json: {error:'Error creating Foster'}
            end
    end

    def show
        render json: @caretaker
    end

    def update
    end

    def destroy
    end

    private 

    def set_caretaker
        @caretaker = Caretaker.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, dog_ids: [], dog_attributes:[:name, :bio])
    end
end