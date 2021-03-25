class Preference < ApplicationRecord
  belongs_to :User
  belongs_to :Diet
end
