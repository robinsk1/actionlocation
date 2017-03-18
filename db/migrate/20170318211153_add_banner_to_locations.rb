class AddBannerToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :banner, :boolean
  end
end
