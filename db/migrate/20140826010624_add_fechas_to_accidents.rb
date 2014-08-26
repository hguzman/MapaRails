class AddFechasToAccidents < ActiveRecord::Migration
  def change
    add_column :accidents, :fecha_ocurrencia_at, :datetime
    add_column :accidents, :fecha_levantamiento_at, :datetime
  end
end
