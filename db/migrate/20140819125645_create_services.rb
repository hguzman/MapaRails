class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :servicio

      t.timestamps
    end
  end
end
