class RemoveFechasToAccidents < ActiveRecord::Migration
  def change
    remove_column :accidents, :fecha_ocurrencia_at, :date
    remove_column :accidents, :fecha_levantamiento_at, :date
  end
end
