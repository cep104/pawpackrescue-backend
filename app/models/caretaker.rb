class Caretaker < ApplicationRecord
    has_many :dogs
    validates :name, :location, :setting, presence: true

end
