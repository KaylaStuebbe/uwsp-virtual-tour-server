require 'test_helper'

class PoisControllerTest < ActionController::TestCase
  setup do
    @poi = pois(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi" do
    assert_difference('Poi.count') do
      post :create, poi: { lat: @poi.lat, long: @poi.long, title: @poi.title }
    end

    assert_redirected_to poi_path(assigns(:poi))
  end

  test "should show poi" do
    get :show, id: @poi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi
    assert_response :success
  end

  test "should update poi" do
    put :update, id: @poi, poi: { lat: @poi.lat, long: @poi.long, title: @poi.title }
    assert_redirected_to poi_path(assigns(:poi))
  end

  test "should destroy poi" do
    assert_difference('Poi.count', -1) do
      delete :destroy, id: @poi
    end

    assert_redirected_to pois_path
  end
end
