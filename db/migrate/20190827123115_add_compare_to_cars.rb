class AddCompareToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :compare, :boolean, default: false
  end
end
