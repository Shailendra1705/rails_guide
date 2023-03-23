class Patient < ApplicationRecord
    has_many :appointments
    has_many :physician, through: :appointments
end
