json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :placa, :nacionalidad, :brand_id, :linea, :colod_id, :modelo, :carroceria, :toneladas, :pasajeros, :licencia_transito, :empresa, :nit, :matriculado_en, :inmovilizado_en, :deposito, :registro, :revision_sino, :revision_numero, :acompanantes, :class_vehicle_id, :modalidad, :radio_accion, :danos_materiales, :lugar_impacto
  json.url vehicle_url(vehicle, format: :json)
end
