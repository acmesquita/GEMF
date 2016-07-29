require 'test_helper'

class EncontrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encontro = encontros(:one)
  end

  test "should get index" do
    get encontros_url
    assert_response :success
  end

  test "should get new" do
    get new_encontro_url
    assert_response :success
  end

  test "should create encontro" do
    assert_difference('Encontro.count') do
      post encontros_url, params: { encontro: { descricao: @encontro.descricao, fim_encontro: @encontro.fim_encontro, fim_inscricoes: @encontro.fim_inscricoes, inicio_encontro: @encontro.inicio_encontro, inicio_inscricoes: @encontro.inicio_inscricoes, quant_max: @encontro.quant_max, tema: @encontro.tema, titulo: @encontro.titulo, valor: @encontro.valor } }
    end

    assert_redirected_to encontro_url(Encontro.last)
  end

  test "should show encontro" do
    get encontro_url(@encontro)
    assert_response :success
  end

  test "should get edit" do
    get edit_encontro_url(@encontro)
    assert_response :success
  end

  test "should update encontro" do
    patch encontro_url(@encontro), params: { encontro: { descricao: @encontro.descricao, fim_encontro: @encontro.fim_encontro, fim_inscricoes: @encontro.fim_inscricoes, inicio_encontro: @encontro.inicio_encontro, inicio_inscricoes: @encontro.inicio_inscricoes, quant_max: @encontro.quant_max, tema: @encontro.tema, titulo: @encontro.titulo, valor: @encontro.valor } }
    assert_redirected_to encontro_url(@encontro)
  end

  test "should destroy encontro" do
    assert_difference('Encontro.count', -1) do
      delete encontro_url(@encontro)
    end

    assert_redirected_to encontros_url
  end
end
