class AddUserIdToAnteproyectos < ActiveRecord::Migration
  def change
    add_column :anteproyectos, :user_id, :integer
  end
end
