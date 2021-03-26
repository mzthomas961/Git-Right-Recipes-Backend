class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :restriction, :user_id, :diet_id
end
