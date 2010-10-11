require 'test_helper'

class PressStoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:press_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create press_story" do
    assert_difference('PressStory.count') do
      post :create, :press_story => { }
    end

    assert_redirected_to press_story_path(assigns(:press_story))
  end

  test "should show press_story" do
    get :show, :id => press_stories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => press_stories(:one).to_param
    assert_response :success
  end

  test "should update press_story" do
    put :update, :id => press_stories(:one).to_param, :press_story => { }
    assert_redirected_to press_story_path(assigns(:press_story))
  end

  test "should destroy press_story" do
    assert_difference('PressStory.count', -1) do
      delete :destroy, :id => press_stories(:one).to_param
    end

    assert_redirected_to press_stories_path
  end
end
