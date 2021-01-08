class CreateAnimalCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_categories do |t|
      t.references :animal, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
