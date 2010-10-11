require 'test_helper'

class BandPhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_photo" do
    assert_difference('BandPhoto.count') do
      post :create, :band_photo => { }
    end

    assert_redirected_to band_photo_path(assigns(:band_photo))
  end

  test "should show band_photo" do
    get :show, :id => band_photos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => band_photos(:one).to_param
    assert_response :success
  end

  test "should update band_photo" do
    put :update, :id => band_photos(:one).to_param, :band_photo => { }
    assert_redirected_to band_photo_path(assigns(:band_photo))
  end

  test "should destroy band_photo" do
    assert_difference('BandPhoto.count', -1) do
      delete :destroy, :id => band_photos(:one).to_param
    end

    assert_redirected_to band_photos_path
  end
end
