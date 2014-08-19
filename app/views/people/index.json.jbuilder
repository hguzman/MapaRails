json.array!(@people) do |person|
  json.extract! person, :id, :document_id, :identificacion, :nombre, :nacionalidad, :nacimiento, :sexo, :direccion, :telefono, :test_id
  json.url person_url(person, format: :json)
end
