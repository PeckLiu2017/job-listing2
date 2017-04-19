class AddSthToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users,:is_candidate,:boolean,default: true
    add_column :users, :timestamp, :string
  end
end
