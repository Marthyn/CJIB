class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :status
      t.integer :bsn
      t.string :chassis_number
      t.string :license_plate
      t.string :color
      t.belongs_to :model
      t.timestamps
    end
  end
end
