class AddUnitRefToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :unit, null: false, foreign_key: true
  end
end
