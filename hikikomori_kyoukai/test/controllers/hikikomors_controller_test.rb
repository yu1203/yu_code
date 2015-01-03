require 'test_helper'

class HikikomorsControllerTest < ActionController::TestCase
  setup do
    @hikikomor = hikikomors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hikikomors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hikikomor" do
    assert_difference('Hikikomor.count') do
      post :create, hikikomor: {  }
    end

    assert_redirected_to hikikomor_path(assigns(:hikikomor))
  end

  test "should show hikikomor" do
    get :show, id: @hikikomor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hikikomor
    assert_response :success
  end

  test "should update hikikomor" do
    patch :update, id: @hikikomor, hikikomor: {  }
    assert_redirected_to hikikomor_path(assigns(:hikikomor))
  end

  test "should destroy hikikomor" do
    assert_difference('Hikikomor.count', -1) do
      delete :destroy, id: @hikikomor
    end

    assert_redirected_to hikikomors_path
  end
end
