json.array!(@accidents) do |accident|
  json.extract! accident, :id, :informe, :transito, :transit_id, :gravedad, :latitud, :longitud, :direccion, :localidad, :fecha_ocurrencia_at, :fecha_levantamiento_at, :clase_accidente, :choque_con, :objeto_fijo, :area, :sector, :zona, :diseno, :clima
  json.url accident_url(accident, format: :json)
end
