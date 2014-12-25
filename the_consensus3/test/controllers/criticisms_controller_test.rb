require 'test_helper'

class CriticismsControllerTest < ActionController::TestCase
  setup do
    @criticism = criticisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:criticisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create criticism" do
    assert_difference('Criticism.count') do
      post :create, criticism: { content: @criticism.content, course_id: @criticism.course_id }
    end

    assert_redirected_to criticism_path(assigns(:criticism))
  end

  test "should show criticism" do
    get :show, id: @criticism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @criticism
    assert_response :success
  end

  test "should update criticism" do
    patch :update, id: @criticism, criticism: { content: @criticism.content, course_id: @criticism.course_id }
    assert_redirected_to criticism_path(assigns(:criticism))
  end

  test "should destroy criticism" do
    assert_difference('Criticism.count', -1) do
      delete :destroy, id: @criticism
    end

    assert_redirected_to criticisms_path
  end
end
