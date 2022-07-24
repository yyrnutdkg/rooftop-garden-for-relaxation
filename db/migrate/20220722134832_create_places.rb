class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name, null: false
      t.text :description
      t.integer :fee
      t.time :start_time
      t.time :end_time
      t.text :access
      t.text :map_link

      t.timestamps
    end
  end
end
