class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.text :comment, null: false

      t.timestamps
    end
  end
end
