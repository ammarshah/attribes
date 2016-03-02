require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { estimated_purchase_amount: @item.estimated_purchase_amount, estimated_purchase_rate: @item.estimated_purchase_rate, last_purchase_amount: @item.last_purchase_amount, last_purchase_rate: @item.last_purchase_rate, name: @item.name, requisition_id: @item.requisition_id }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { estimated_purchase_amount: @item.estimated_purchase_amount, estimated_purchase_rate: @item.estimated_purchase_rate, last_purchase_amount: @item.last_purchase_amount, last_purchase_rate: @item.last_purchase_rate, name: @item.name, requisition_id: @item.requisition_id }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
