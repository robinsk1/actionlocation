class AddFeaturedToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :featured, :boolean
  end
end
