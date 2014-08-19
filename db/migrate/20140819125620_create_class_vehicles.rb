class CreateClassVehicles < ActiveRecord::Migration
  def change
    create_table :class_vehicles do |t|
      t.string :clase

      t.timestamps
    end
  end
end
