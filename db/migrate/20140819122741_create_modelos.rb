class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :Accident
      t.integer :informe
      t.integer :transito
      t.integer :transit_id
      t.integer :gravedad
      t.float :latitud
      t.float :longitud
      t.string :direccion
      t.string :localidad
      t.datetime :fecha_ocurrencia_at
      t.datetime :fecha_levantamiento_at
      t.integer :clase_accidente
      t.integer :choque_con
      t.integer :objeto_fijo
      t.integer :area
      t.integer :sector
      t.integer :zona
      t.integer :diseno
      t.integer :clima

      t.timestamps
    end
  end
end
