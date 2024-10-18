class CreateSolidCableTable < ActiveRecord::Migration[7.2]
  def change
    create_table "solid_cable_messages", force: :cascade do |t|
      t.timestamps
      t.binary "channel", limit: 1024, null: false
      t.binary "payload", limit: 536870912, null: false
      t.integer "channel_hash", limit: 8, null: false
      t.index ["channel"], name: "index_solid_cable_messages_on_channel"
      t.index ["channel_hash"], name: "index_solid_cable_messages_on_channel_hash"
    end
  end
end
