class RemoveCarTypeFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :car_type, :string
  end
end
