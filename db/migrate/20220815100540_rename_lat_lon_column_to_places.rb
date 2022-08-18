class RenameLatLonColumnToPlaces < ActiveRecord::Migration[6.1]
  def change
    rename_column :places, :lat_lon, :lonlat
  end
end
