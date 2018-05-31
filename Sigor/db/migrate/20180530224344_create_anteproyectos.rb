class CreateAnteproyectos < ActiveRecord::Migration
  def change
    create_table :anteproyectos do |t|
      t.string :Nombre
      t.string :Objetivo
      t.string :Justificacion
      t.string :Cronograma
      t.string :DescripcionActividades
      t.string :NombreEmp
      t.string :DireccionEmp
      t.string :TelefonoEmp
      t.string :Comentarios
      t.string :Estatus

      t.timestamps
    end
  end
end
