class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :rescue_date, :age, :gender, :breed, :house_trained, :good_with, :size, :bio, :medication, :caretaker_id
end
