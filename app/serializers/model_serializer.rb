class ModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :agency, :age, :image, :ranking, :shows_walked, :insta_followers, :height, :special_skills, :city, :fee
end
