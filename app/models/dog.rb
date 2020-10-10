class Dog < ApplicationRecord
    belongs_to :caretaker
    # belongs_to :user, optional: true
    validates :name,:gender,:breed,:size,:bio, presence: true
    validates_inclusion_of :size, :in => ['Small','Medium','Large']
    validates_inclusion_of :gender, :in => ['Male','Female']
    
end
 