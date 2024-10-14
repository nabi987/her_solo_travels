class CreateFriendships < ActiveRecord::Migration[7.2]
  def change
    create_table :friendships do |t|
      t.references :requester, foreign_key: { to_table: :users }, null: false
      t.references :requestee, foreign_key: { to_table: :users }, null: false
      t.string :status

      t.timestamps
    end
    add_index :friendships, [:requester_id, :requestee_id], unique: true
  end
end
