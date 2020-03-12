class AddUserIdToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :user_id, :integer
  end
end
