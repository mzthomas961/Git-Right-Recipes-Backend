class User < ApplicationRecord 
    has_many :preferences, dependent: :destroy
    has_many :diets, through: :preferences 
end
