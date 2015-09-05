require 'test_helper'

class UsesrsControllerTest < ActionController::TestCase
  setup do
    @usesr = usesrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usesrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usesr" do
    assert_difference('Usesr.count') do
      post :create, usesr: { email: @usesr.email, name: @usesr.name }
    end

    assert_redirected_to usesr_path(assigns(:usesr))
  end

  test "should show usesr" do
    get :show, id: @usesr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usesr
    assert_response :success
  end

  test "should update usesr" do
    patch :update, id: @usesr, usesr: { email: @usesr.email, name: @usesr.name }
    assert_redirected_to usesr_path(assigns(:usesr))
  end

  test "should destroy usesr" do
    assert_difference('Usesr.count', -1) do
      delete :destroy, id: @usesr
    end

    assert_redirected_to usesrs_path
  end
end
