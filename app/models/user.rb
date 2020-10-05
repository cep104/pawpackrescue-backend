class User < ApplicationRecord
    has_many :dogs
    validates :name,:email, presence: true
    has_secure_password
end
