class AddVideoToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :video, :string
  end
end
