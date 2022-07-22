class CreatePlaceTags < ActiveRecord::Migration[6.1]
  def change
    create_table :place_tags do |t|
      t.references :place, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
