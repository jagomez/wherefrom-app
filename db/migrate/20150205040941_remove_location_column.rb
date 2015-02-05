class RemoveLocationColumn < ActiveRecord::Migration
  def change
  	remove_column :stories, :location
  end
end
