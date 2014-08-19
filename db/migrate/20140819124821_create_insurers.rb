class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :nom_aseguradora

      t.timestamps
    end
  end
end
