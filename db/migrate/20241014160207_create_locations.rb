class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.date :start_date
      t.date :end_date
      t.text :activites
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
