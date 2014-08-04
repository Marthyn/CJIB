class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :brand
      t.float :engine_capacity
      t.string :car_type
      t.string :engine_type
      t.timestamps
    end
  end
end
