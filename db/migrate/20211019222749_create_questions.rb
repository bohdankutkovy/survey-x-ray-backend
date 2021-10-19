class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions, id: :uuid do |t|
      t.string :value
      t.integer :question_type
      t.integer :level, index: true
      t.belongs_to :catalog, null: false, type: :uuid, foreign_key: true, index: true

      t.timestamps
    end
  end
end
