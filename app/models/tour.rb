class Tour < ApplicationRecord

    has_many :reservations 
    has_many :clients, through: :reservations
end
