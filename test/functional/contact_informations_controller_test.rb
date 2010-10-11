require 'test_helper'

class ContactInformationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_information" do
    assert_difference('ContactInformation.count') do
      post :create, :contact_information => { }
    end

    assert_redirected_to contact_information_path(assigns(:contact_information))
  end

  test "should show contact_information" do
    get :show, :id => contact_informations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contact_informations(:one).to_param
    assert_response :success
  end

  test "should update contact_information" do
    put :update, :id => contact_informations(:one).to_param, :contact_information => { }
    assert_redirected_to contact_information_path(assigns(:contact_information))
  end

  test "should destroy contact_information" do
    assert_difference('ContactInformation.count', -1) do
      delete :destroy, :id => contact_informations(:one).to_param
    end

    assert_redirected_to contact_informations_path
  end
end
