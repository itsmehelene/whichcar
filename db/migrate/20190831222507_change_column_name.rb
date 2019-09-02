class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cars, :type, :car_type
  end
end
