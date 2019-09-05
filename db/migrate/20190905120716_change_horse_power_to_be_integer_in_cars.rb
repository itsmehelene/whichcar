class ChangeHorsePowerToBeIntegerInCars < ActiveRecord::Migration[5.2]
  def change
    change_column :cars, :horse_power, :integer, using: 'horse_power::integer'
  end
end
