class AddPowerToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :power, :integer
  end
end
