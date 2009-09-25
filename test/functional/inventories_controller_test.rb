require 'test_helper'

class InventoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post :create, :inventory => { }
    end

    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should show inventory" do
    get :show, :id => inventories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => inventories(:one).to_param
    assert_response :success
  end

  test "should update inventory" do
    put :update, :id => inventories(:one).to_param, :inventory => { }
    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should destroy inventory" do
    assert_difference('Inventory.count', -1) do
      delete :destroy, :id => inventories(:one).to_param
    end

    assert_redirected_to inventories_path
  end
end
