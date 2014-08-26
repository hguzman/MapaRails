class Accident < ActiveRecord::Base
  geocoded_by :direccion, :latitude  => :latitud, :longitude => :longitud # ActiveRecord
  after_validation :geocode, :if => :direccion_changed?
#  after_validation :geocode

  # def address
  #   [calle, numero, ciudad, departamento, "Colombia"].compact.join(', ')
  # end
end
