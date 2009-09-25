require 'test_helper'

class ProductListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_list" do
    assert_difference('ProductList.count') do
      post :create, :product_list => { }
    end

    assert_redirected_to product_list_path(assigns(:product_list))
  end

  test "should show product_list" do
    get :show, :id => product_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_lists(:one).to_param
    assert_response :success
  end

  test "should update product_list" do
    put :update, :id => product_lists(:one).to_param, :product_list => { }
    assert_redirected_to product_list_path(assigns(:product_list))
  end

  test "should destroy product_list" do
    assert_difference('ProductList.count', -1) do
      delete :destroy, :id => product_lists(:one).to_param
    end

    assert_redirected_to product_lists_path
  end
end
