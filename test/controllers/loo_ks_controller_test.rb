require 'test_helper'

class LooKsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @look = looks(:one)
  end

  test "should get index" do
    get looks_url
    assert_response :success
  end

  test "should get new" do
    get new_look_url
    assert_response :success
  end

  test "should create look" do
    assert_difference('Look.count') do
      post looks_url, params: { look: { Ingredients: @look.Ingredients, Loves: @look.Loves, Name: @look.Name } }
    end

    assert_redirected_to look_url(Look.last)
  end

  test "should show look" do
    get look_url(@look)
    assert_response :success
  end

  test "should get edit" do
    get edit_look_url(@look)
    assert_response :success
  end

  test "should update look" do
    patch look_url(@look), params: { look: { Ingredients: @look.Ingredients, Loves: @look.Loves, Name: @look.Name } }
    assert_redirected_to look_url(@look)
  end

  test "should destroy look" do
    assert_difference('Look.count', -1) do
      delete look_url(@look)
    end

    assert_redirected_to looks_url
  end
end
