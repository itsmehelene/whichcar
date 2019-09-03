class AddHorsePowerToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :horse_power, :string
  end
end
