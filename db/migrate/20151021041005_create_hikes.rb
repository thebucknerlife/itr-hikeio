class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.float :distance_mi
      t.integer :elevation_gain
      t.integer :max_elevation

      t.timestamps null: false
    end
  end
end
