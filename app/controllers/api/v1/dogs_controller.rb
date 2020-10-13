class Api::V1::DogsController < ApplicationController
    # before_action :set_dog, only: [:show, :update, :destroy]
    before_action :set_caretaker, only: [:create, :delete]
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def create

        @dog = @caretaker.dogs.new(dog_params)
    
            if @dog.save
                render json: @caretaker
            else
                render json: {error:'Error creating Dog'}
            end
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end

    def update
        if @dog.update(dog_params)
            render json: @dog
          else
            render json: @dog.errors, status: :unprocessable_entity
          end
          

    end

    def destroy
        dog = Dog.find(params[:id])
        caretaker = Caretaker.find(dog.caretaker_id)
        dog.destroy
        render json: caretaker
    end

    private 
    def set_caretaker
        @caretaker = Caretaker.find(params[:caretaker_id])
    end

    # def set_dog
    #     @dog = Dog.find(params[:id])
    # end

    def dog_params
        params.require(:dog).permit(:name, :age, :gender, :breed, :house_trained, :good_with, :size, :bio, :medication, :caretaker_id, :img_src)
    end


end
