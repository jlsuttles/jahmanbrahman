require 'test_helper'

class NewsStoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_story" do
    assert_difference('NewsStory.count') do
      post :create, :news_story => { }
    end

    assert_redirected_to news_story_path(assigns(:news_story))
  end

  test "should show news_story" do
    get :show, :id => news_stories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => news_stories(:one).to_param
    assert_response :success
  end

  test "should update news_story" do
    put :update, :id => news_stories(:one).to_param, :news_story => { }
    assert_redirected_to news_story_path(assigns(:news_story))
  end

  test "should destroy news_story" do
    assert_difference('NewsStory.count', -1) do
      delete :destroy, :id => news_stories(:one).to_param
    end

    assert_redirected_to news_stories_path
  end
end
