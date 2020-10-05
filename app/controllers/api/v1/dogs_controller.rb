class Api::V1::DogsController < ApplicationController
    before_action :set_dog, only: [:show, :update, :destroy]
    
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def create
        @dog = Dog.new(dog_params)
    
            if @dog.save
                render json: @dog, status: :created, location: @dog
            else
                render json: {error:'Error creating Dog'}
            end
    end

    def show
        render json: @dog
    end

    def update
        if @dog.update(dog_params)
            render json: @dog
          else
            render json: @dog.errors, status: :unprocessable_entity
          end

    end

    def destroy
        @dog.destroy
    end

    private 

    def set_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name, :rescue_date, :age, :gender, :breed, :house_trained, :good_with, :size, :bio, :medication, :caretaker_id, :user_id)
    end


end
