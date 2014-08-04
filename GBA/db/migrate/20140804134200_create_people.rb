class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :bsn
      t.string :sex, limit: 1
      t.string :initials
      t.string :last_name
      t.string :first_name
      t.integer :house_number
      t.string :postal_code
      t.string :city
      t.timestamps
    end
  end
end
