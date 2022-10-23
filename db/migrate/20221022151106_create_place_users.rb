class CreatePlaceUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :place_users do |t|
      t.references :place, type: :integer, null: false, foreign_key: true
      t.references :user, type: :integer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
