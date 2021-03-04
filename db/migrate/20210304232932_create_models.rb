class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :models do |t|
      t.string :name
      t.string :age
      t.string :image
      t.integer :ranking
      t.integer :shows_walked
      t.integer :insta_followers
      t.integer :height
      t.string :special_skills
      t.string :city
      t.integer :fee

      t.timestamps
    end
  end
end
