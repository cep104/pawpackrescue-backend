class CaretakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :setting, :img_src

  has_many :dogs
end
