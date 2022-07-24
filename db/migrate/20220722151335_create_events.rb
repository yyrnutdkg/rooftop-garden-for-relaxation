class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :place, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
