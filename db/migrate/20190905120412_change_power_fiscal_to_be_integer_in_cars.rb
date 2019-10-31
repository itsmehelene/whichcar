class ChangePowerFiscalToBeIntegerInCars < ActiveRecord::Migration[5.2]
  def change
     change_column :cars, :power_fiscal, :integer, using: 'power_fiscal::integer'
  end
end
