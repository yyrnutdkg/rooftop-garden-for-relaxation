class ChangeDataIdPostusers < ActiveRecord::Migration[6.1]
  def change
    change_column :post_users, :post_id, :integer
    change_column :post_users, :user_id, :integer
  end
end
