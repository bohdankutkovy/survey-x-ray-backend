class CreateCatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :catalogs, id: :uuid do |t|
      t.string :name
      t.integer :questions_count

      t.timestamps
    end
  end
end
