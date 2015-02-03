class AddAddressColumns < ActiveRecord::Migration
  def change
  	add_column :stories, :address, :string
  	add_column :stories, :longitude, :float
  	add_column :stories, :latitude, :float
  end
end
