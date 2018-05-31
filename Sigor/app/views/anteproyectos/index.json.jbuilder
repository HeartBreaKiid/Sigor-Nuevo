json.array!(@anteproyectos) do |anteproyecto|
  json.extract! anteproyecto, :id, :Nombre, :Objetivo, :Justificacion, :Cronograma, :DescripcionActividades, :NombreEmp, :DireccionEmp, :TelefonoEmp, :Comentarios, :Estatus
  json.url anteproyecto_url(anteproyecto, format: :json)
end
