class FixJobUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :jobs, :user_id, :integer
  end
end
