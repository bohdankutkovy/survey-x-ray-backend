class CreateCatalogsQuestionnaires < ActiveRecord::Migration[6.1]
  def change
    create_table :catalogs_questionnaires, id: false do |t|
      t.belongs_to :catalog, null: false, foreign_key: true, type: :uuid, index: true
      t.belongs_to :questionnaire, null: false, foreign_key: true, type: :uuid, index: true

      t.timestamps
    end
  end
end
