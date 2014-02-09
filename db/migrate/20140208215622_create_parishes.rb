class CreateParishes < ActiveRecord::Migration
  def change
    create_table :parishes do |t|
      t.string :parish_name
      t.integer :county_id

      t.timestamps
    end
  end
end
