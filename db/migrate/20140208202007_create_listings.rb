class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :landlord, null: false
      t.text :rental_desc, null: false
      t.integer :bedroom, default: 0
      t.float :bathroom, default: 1
      t.string :rate, default: "Call For Rent"
      t.string :phone, default: "999-9999"
      t.string :town, null: false
      t.integer :parish_id
      t.integer :county_id

      t.timestamps
    end
  end
end
