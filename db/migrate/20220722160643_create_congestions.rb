class CreateCongestions < ActiveRecord::Migration[6.1]
  def change
    create_table :congestions do |t|
      t.references :place, null: false, foreign_key: true
      t.integer :rate, null:false

      t.timestamps
    end
  end
end
