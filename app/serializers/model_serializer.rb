class ModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :image, :ranking, :shows_walked, :insta_followers, :height, :special_skills, :city, :fee
end
