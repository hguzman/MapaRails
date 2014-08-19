class CreateListInsurers < ActiveRecord::Migration
  def change
    create_table :list_insurers do |t|
      t.integer :insurer_id
      t.integer :type_insurer_id
      t.integer :poliza
      t.date :vencimiento

      t.timestamps
    end
  end
end
