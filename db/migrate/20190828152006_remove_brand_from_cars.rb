class RemoveBrandFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :brand, :string
  end
end
