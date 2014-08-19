class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.integer :accident_id
      t.integer :via
      t.integer :geometria
      t.integer :utilizacion
      t.integer :calzadas
      t.integer :carriles
      t.integer :superficie
      t.integer :controles
      t.integer :visibilidad

      t.timestamps
    end
  end
end
