class RemovePowerNameFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :power, :integer
  end
end
