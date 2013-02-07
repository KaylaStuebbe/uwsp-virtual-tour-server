require 'test_helper'

class ItemToViewsControllerTest < ActionController::TestCase
  setup do
    @item_to_view = item_to_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_to_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_to_view" do
    assert_difference('ItemToView.count') do
      post :create, item_to_view: { altitude: @item_to_view.altitude, body: @item_to_view.body, compass_heading: @item_to_view.compass_heading, poi_id: @item_to_view.poi_id, title: @item_to_view.title }
    end

    assert_redirected_to item_to_view_path(assigns(:item_to_view))
  end

  test "should show item_to_view" do
    get :show, id: @item_to_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_to_view
    assert_response :success
  end

  test "should update item_to_view" do
    put :update, id: @item_to_view, item_to_view: { altitude: @item_to_view.altitude, body: @item_to_view.body, compass_heading: @item_to_view.compass_heading, poi_id: @item_to_view.poi_id, title: @item_to_view.title }
    assert_redirected_to item_to_view_path(assigns(:item_to_view))
  end

  test "should destroy item_to_view" do
    assert_difference('ItemToView.count', -1) do
      delete :destroy, id: @item_to_view
    end

    assert_redirected_to item_to_views_path
  end
end
