json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :Accident, :informe, :transito, :transit_id, :gravedad, :latitud, :longitud, :direccion, :localidad, :fecha_ocurrencia_at, :fecha_levantamiento_at, :clase_accidente, :choque_con, :objeto_fijo, :area, :sector, :zona, :diseno, :clima
  json.url modelo_url(modelo, format: :json)
end
