class AddDefaultValueToStatus < ActiveRecord::Migration[7.2]
  def change
    change_column :friendships, :status, :string, default: "pending"
  end
end
