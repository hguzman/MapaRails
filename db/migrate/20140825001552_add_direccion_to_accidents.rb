class AddDireccionToAccidents < ActiveRecord::Migration
  def change
    add_column :accidents, :calle, :string
    add_column :accidents, :numero, :string
    add_column :accidents, :ciudad, :string
    add_column :accidents, :departamento, :string
  end
end
