class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :placa
      t.string :nacionalidad
      t.integer :brand_id
      t.string :linea
      t.integer :colod_id
      t.integer :modelo
      t.string :carroceria
      t.integer :toneladas
      t.integer :pasajeros
      t.string :licencia_transito
      t.string :empresa
      t.integer :nit
      t.string :matriculado_en
      t.string :inmovilizado_en
      t.string :deposito
      t.integer :registro
      t.integer :revision_sino
      t.integer :revision_numero
      t.integer :acompanantes
      t.integer :class_vehicle_id
      t.integer :modalidad
      t.integer :radio_accion
      t.string :danos_materiales
      t.integer :lugar_impacto

      t.timestamps
    end
  end
end
