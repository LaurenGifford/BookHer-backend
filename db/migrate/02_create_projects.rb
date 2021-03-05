class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :city
      t.integer :budget
      t.references :casting_director, null: false, foreign_key: true
      t.datetime :date
      t.string :agency

      t.timestamps
    end
  end
end
