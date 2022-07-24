class RenameTypeColumnToStores < ActiveRecord::Migration[6.1]
  def change
    rename_column :stores, :type, :store_type
  end
end
