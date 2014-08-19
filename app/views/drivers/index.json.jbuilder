json.array!(@drivers) do |driver|
  json.extract! driver, :id, :gravedad, :direccion, :telefono, :ciudad, :porta_licencia, :num_licencia, :categoria, :restriccion, :expven, :fecha_expven_at, :cod_transito, :chaleco, :casco, :cinturon, :hospital, :lesiones
  json.url driver_url(driver, format: :json)
end
