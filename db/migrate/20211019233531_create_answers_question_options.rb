class CreateAnswersQuestionOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answers_question_options, id: false do |t|
      t.belongs_to :answer, null: false, foreign_key: true, type: :uuid, index: true
      t.belongs_to :question_option, null: false, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
