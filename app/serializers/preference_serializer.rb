class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :restriction, :user_id, :diet_id
  belongs_to :diet
end
