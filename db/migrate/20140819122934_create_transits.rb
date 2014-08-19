class CreateTransits < ActiveRecord::Migration
  def change
    create_table :transits do |t|
      t.string :transito

      t.timestamps
    end
  end
end
