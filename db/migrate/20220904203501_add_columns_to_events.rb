class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_time, :timestamp
    add_column :events, :end_time, :timestamp
  end
end
