class AddColumnContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :email, :string, null: false, index: { unique: true }
  end
end
