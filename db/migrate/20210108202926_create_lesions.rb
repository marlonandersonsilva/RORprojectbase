class CreateLesions < ActiveRecord::Migration[5.2]
  def change
    create_table :lesions do |t|
      t.string :name

      t.timestamps
    end
  end
end
