class CaretakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :setting

  has_many :dogs
end
