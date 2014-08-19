class CreateTypeInsurers < ActiveRecord::Migration
  def change
    create_table :type_insurers do |t|
      t.string :tipo_seguro

      t.timestamps
    end
  end
end
