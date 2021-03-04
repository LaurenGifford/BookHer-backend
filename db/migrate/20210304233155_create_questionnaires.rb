class CreateQuestionnaires < ActiveRecord::Migration[6.1]
  def change
    create_table :questionnaires do |t|
      t.references :project, null: false, foreign_key: true
      t.text :text
      t.boolean :pop_up
      t.string :model_attr

      t.timestamps
    end
  end
end
