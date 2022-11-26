class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :place, null: false, foreign_key: true
      t.integer :type
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
