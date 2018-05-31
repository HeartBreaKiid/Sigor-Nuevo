class AddColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Nombre, :string
    add_column :users, :Promedio, :integer
    add_column :users, :PlanEstudios, :integer
    add_column :users, :NoControl, :integer
    add_column :users, :Carrera, :string
    add_column :users, :TipoUsuario, :string
  end
end
