class AddDescriptionAndUrlToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :description, :string
    add_column :restaurants, :url, :string
  end
end
