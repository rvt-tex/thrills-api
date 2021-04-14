class Client < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :tours, through: :reservations 
end
