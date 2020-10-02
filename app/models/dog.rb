class Dog < ApplicationRecord
    belongs_to :caretaker
    validates :name,:rescue_date,:gender,:breed,:size,:bio, presence: true

end
 