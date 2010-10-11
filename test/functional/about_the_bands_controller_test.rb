require 'test_helper'

class AboutTheBandsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_the_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_the_band" do
    assert_difference('AboutTheBand.count') do
      post :create, :about_the_band => { }
    end

    assert_redirected_to about_the_band_path(assigns(:about_the_band))
  end

  test "should show about_the_band" do
    get :show, :id => about_the_bands(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => about_the_bands(:one).to_param
    assert_response :success
  end

  test "should update about_the_band" do
    put :update, :id => about_the_bands(:one).to_param, :about_the_band => { }
    assert_redirected_to about_the_band_path(assigns(:about_the_band))
  end

  test "should destroy about_the_band" do
    assert_difference('AboutTheBand.count', -1) do
      delete :destroy, :id => about_the_bands(:one).to_param
    end

    assert_redirected_to about_the_bands_path
  end
end
