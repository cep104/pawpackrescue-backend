class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :breed, :house_trained, :good_with, :size, :bio, :medication, :caretaker_id, :img_src
end
