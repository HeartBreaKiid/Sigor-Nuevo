require 'test_helper'

class AnteproyectosControllerTest < ActionController::TestCase
  setup do
    @anteproyecto = anteproyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anteproyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anteproyecto" do
    assert_difference('Anteproyecto.count') do
      post :create, anteproyecto: { Comentarios: @anteproyecto.Comentarios, Cronograma: @anteproyecto.Cronograma, DescripcionActividades: @anteproyecto.DescripcionActividades, DireccionEmp: @anteproyecto.DireccionEmp, Estatus: @anteproyecto.Estatus, Justificacion: @anteproyecto.Justificacion, Nombre: @anteproyecto.Nombre, NombreEmp: @anteproyecto.NombreEmp, Objetivo: @anteproyecto.Objetivo, TelefonoEmp: @anteproyecto.TelefonoEmp }
    end

    assert_redirected_to anteproyecto_path(assigns(:anteproyecto))
  end

  test "should show anteproyecto" do
    get :show, id: @anteproyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anteproyecto
    assert_response :success
  end

  test "should update anteproyecto" do
    patch :update, id: @anteproyecto, anteproyecto: { Comentarios: @anteproyecto.Comentarios, Cronograma: @anteproyecto.Cronograma, DescripcionActividades: @anteproyecto.DescripcionActividades, DireccionEmp: @anteproyecto.DireccionEmp, Estatus: @anteproyecto.Estatus, Justificacion: @anteproyecto.Justificacion, Nombre: @anteproyecto.Nombre, NombreEmp: @anteproyecto.NombreEmp, Objetivo: @anteproyecto.Objetivo, TelefonoEmp: @anteproyecto.TelefonoEmp }
    assert_redirected_to anteproyecto_path(assigns(:anteproyecto))
  end

  test "should destroy anteproyecto" do
    assert_difference('Anteproyecto.count', -1) do
      delete :destroy, id: @anteproyecto
    end

    assert_redirected_to anteproyectos_path
  end
end
