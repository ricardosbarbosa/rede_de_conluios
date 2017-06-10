require 'test_helper'

class LicitacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @licitacao = licitacaos(:one)
  end

  test "should get index" do
    get licitacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_licitacao_url
    assert_response :success
  end

  test "should create licitacao" do
    assert_difference('Licitacao.count') do
      post licitacaos_url, params: { licitacao: { data: @licitacao.data, descricao: @licitacao.descricao, tipo: @licitacao.tipo, valor: @licitacao.valor } }
    end

    assert_redirected_to licitacao_url(Licitacao.last)
  end

  test "should show licitacao" do
    get licitacao_url(@licitacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_licitacao_url(@licitacao)
    assert_response :success
  end

  test "should update licitacao" do
    patch licitacao_url(@licitacao), params: { licitacao: { data: @licitacao.data, descricao: @licitacao.descricao, tipo: @licitacao.tipo, valor: @licitacao.valor } }
    assert_redirected_to licitacao_url(@licitacao)
  end

  test "should destroy licitacao" do
    assert_difference('Licitacao.count', -1) do
      delete licitacao_url(@licitacao)
    end

    assert_redirected_to licitacaos_url
  end
end
