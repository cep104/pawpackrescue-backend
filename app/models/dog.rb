class Dog < ApplicationRecord
    belongs_to :caretaker
    validates :name,:rescue_date,:gender,:breed,:size,:bio, presence: true
    validates_inclusion_of :size, :in => ['small','medium','large']
    validates_inclusion_of :gender, :in => ['male','female']
    
end
 