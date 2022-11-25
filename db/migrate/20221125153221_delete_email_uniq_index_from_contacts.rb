class DeleteEmailUniqIndexFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_index :contacts, :email
  end
end
