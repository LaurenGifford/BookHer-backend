class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :model_attr
      t.boolean :pop_up

      t.timestamps
    end
  end
end
