class User < ApplicationRecord 
    has_many :preferences
    has_many :diets, through: :preferences
end
