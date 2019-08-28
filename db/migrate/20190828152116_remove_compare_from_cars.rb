class RemoveCompareFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :compare, :boolean
  end
end
