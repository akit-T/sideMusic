class AddSeriesRefToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_reference :albums, :series, null: false, foreign_key: true
  end
end
