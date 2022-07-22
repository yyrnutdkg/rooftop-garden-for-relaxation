class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.references :place, null: false, foreign_key: true
      t.integer :type, null: false, default: 0
      t.string :title, null: false
      t.text :description
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
