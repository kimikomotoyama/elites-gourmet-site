class AddAboutToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :about, :string
  end
end
