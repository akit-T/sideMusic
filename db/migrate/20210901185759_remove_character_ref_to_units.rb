class RemoveCharacterRefToUnits < ActiveRecord::Migration[6.0]
  def up
    remove_column :characters, :unit, null: false, foreign_key: true
      end

  def down
    remove_column :characters, :unit, null: false, foreign_key: true
  end
end
