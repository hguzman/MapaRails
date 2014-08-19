class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :document_id
      t.integer :identificacion
      t.string :nombre
      t.string :nacionalidad
      t.date :nacimiento
      t.integer :sexo
      t.string :direccion
      t.integer :telefono
      t.integer :test_id

      t.timestamps
    end
  end
end
