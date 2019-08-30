class AddLinkToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :link, :string
  end
end
