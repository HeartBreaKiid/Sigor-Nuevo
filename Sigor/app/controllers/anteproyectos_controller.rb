class AnteproyectosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_anteproyecto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
  @anteproyectos = Anteproyecto.where(user_id: current_user.id)
    respond_with(@anteproyectos)
  end

  def show
    respond_with(@anteproyecto)
  end

  def new
    @anteproyecto = current_user.anteproyectos.build
    respond_with(@anteproyecto)
  end

  def edit
  end

  def create
    @anteproyecto =current_user.anteproyectos.build(anteproyecto_params)
    @anteproyecto.save
    respond_with(@anteproyecto)
  end

  def update
    @anteproyecto.update(anteproyecto_params)
    respond_with(@anteproyecto)
  end

  def destroy
    @anteproyecto.destroy
    respond_with(@anteproyecto)
  end

  private
    def set_anteproyecto
      @anteproyecto = Anteproyecto.find(params[:id])
    end

    def anteproyecto_params
      params.require(:anteproyecto).permit(:Nombre, :Objetivo, :Justificacion, :Cronograma, :DescripcionActividades, :NombreEmp, :DireccionEmp, :TelefonoEmp, :Comentarios, :Estatus, :user_id)
    end
end
