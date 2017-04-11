class AddAvatarToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :avatar, :string
  end
end
