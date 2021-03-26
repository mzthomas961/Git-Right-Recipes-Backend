class Diet < ApplicationRecord
    has_many :preferences
    has_many :users, through: :preferences
end
