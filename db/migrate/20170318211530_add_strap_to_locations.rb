class AddStrapToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :strap, :string
  end
end
