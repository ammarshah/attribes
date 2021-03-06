require 'test_helper'

class RequisitionsControllerTest < ActionController::TestCase
  setup do
    @requisition = requisitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requisitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requisition" do
    assert_difference('Requisition.count') do
      post :create, requisition: { delivery_date: @requisition.delivery_date, project_name: @requisition.project_name, purpose: @requisition.purpose, request_by: @requisition.request_by, request_date: @requisition.request_date }
    end

    assert_redirected_to requisition_path(assigns(:requisition))
  end

  test "should show requisition" do
    get :show, id: @requisition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requisition
    assert_response :success
  end

  test "should update requisition" do
    patch :update, id: @requisition, requisition: { delivery_date: @requisition.delivery_date, project_name: @requisition.project_name, purpose: @requisition.purpose, request_by: @requisition.request_by, request_date: @requisition.request_date }
    assert_redirected_to requisition_path(assigns(:requisition))
  end

  test "should destroy requisition" do
    assert_difference('Requisition.count', -1) do
      delete :destroy, id: @requisition
    end

    assert_redirected_to requisitions_path
  end
end
