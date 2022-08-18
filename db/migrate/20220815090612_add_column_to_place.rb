class AddColumnToPlace < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :lat_lon, :st_point, geographic: true
  end
end
