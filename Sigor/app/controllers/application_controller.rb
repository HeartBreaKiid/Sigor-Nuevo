class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:Nombre, :Promedio, :PlanEstudios,:NoControl, :Carrera, :TipoUsuario, :email, :password,  :current_password) }
     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:Nombre, :Promedio, :PlanEstudios,:NoControl, :Carrera, :TipoUsuario, :email) }
  end

end