class RemoveLinkFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :link, :string
  end
end
