class DietSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image
  has_many :recipe_diets
  has_many :recipes, through: :recipe_diets

end
