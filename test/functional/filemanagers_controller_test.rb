require 'test_helper'

class FilemanagersControllerTest < ActionController::TestCase
  setup do
    @filemanager = filemanagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filemanagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filemanager" do
    assert_difference('Filemanager.count') do
      post :create, filemanager: { name: @filemanager.name }
    end

    assert_redirected_to filemanager_path(assigns(:filemanager))
  end

  test "should show filemanager" do
    get :show, id: @filemanager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filemanager
    assert_response :success
  end

  test "should update filemanager" do
    put :update, id: @filemanager, filemanager: { name: @filemanager.name }
    assert_redirected_to filemanager_path(assigns(:filemanager))
  end

  test "should destroy filemanager" do
    assert_difference('Filemanager.count', -1) do
      delete :destroy, id: @filemanager
    end

    assert_redirected_to filemanagers_path
  end
end
