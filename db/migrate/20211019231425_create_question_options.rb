class CreateQuestionOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :question_options, id: :uuid do |t|
      t.boolean :correct, default: false
      t.string :value
      t.belongs_to :question, null: false, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
