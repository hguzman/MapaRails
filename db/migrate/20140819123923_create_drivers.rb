class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.integer :gravedad
      t.string :direccion
      t.integer :telefono
      t.string :ciudad
      t.integer :porta_licencia
      t.integer :num_licencia
      t.string :categoria
      t.integer :restriccion
      t.integer :expven
      t.date :fecha_expven_at
      t.integer :cod_transito
      t.integer :chaleco
      t.integer :casco
      t.integer :cinturon
      t.string :hospital
      t.string :lesiones

      t.timestamps
    end
  end
end
