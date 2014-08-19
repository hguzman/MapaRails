class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :autorizo
      t.integer :embriaguez
      t.integer :grado
      t.integer :psicoactivas

      t.timestamps
    end
  end
end
