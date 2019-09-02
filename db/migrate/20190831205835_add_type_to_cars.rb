class AddTypeToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :type, :string
  end
end
