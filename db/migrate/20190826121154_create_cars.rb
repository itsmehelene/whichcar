class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :passengers
      t.string :brand
      t.integer :year
      t.string :fuel
      t.integer :critair
      t.string :gearbox
      t.integer :trunk_size
      t.string :car_type
      t.integer :price

      t.timestamps
    end
  end
end
