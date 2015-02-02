class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :user_id
      t.text :title
      t.text :story
      t.text :location

      t.timestamps
    end
  end
end
