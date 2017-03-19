class AddAddressToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :city, :string
    add_column :locations, :post_code, :string
    add_column :locations, :street_address_1, :string
  end
end
