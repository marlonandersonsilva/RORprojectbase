class AddLesionToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :lesion, foreign_key: true
  end
end
