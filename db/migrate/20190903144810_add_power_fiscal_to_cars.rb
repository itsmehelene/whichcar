class AddPowerFiscalToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :power_fiscal, :string
  end
end
