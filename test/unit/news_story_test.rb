require 'test_helper'

class NewsStoryTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    news = NewsStory.new
    assert !news.valid?
    assert news.errors.invalid? :title
    assert news.errors.invalid? :description
  end
  
end
