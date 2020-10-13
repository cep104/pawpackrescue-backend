class Caretaker < ApplicationRecord
    has_many :dogs
    accepts_nested_attributes_for :dogs
    validates :name, :location, :setting, presence: {strict: true}

end
