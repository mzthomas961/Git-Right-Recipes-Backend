class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :ingredients, :instructions, :breakfast, :lunch, :dinner, :snack, :dessert

end
