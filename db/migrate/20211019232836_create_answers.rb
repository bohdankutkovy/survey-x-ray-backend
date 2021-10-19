class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers, id: :uuid do |t|
      t.text :value
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid, index: true
      t.belongs_to :questionnaire, null: false, foreign_key: true, type: :uuid, index: true
      t.belongs_to :question, null: false, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
