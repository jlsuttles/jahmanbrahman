require 'test_helper'

class PressStoryTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    press = PressStory.new
    assert !press.valid?
    assert press.errors.invalid? :title
    assert press.errors.invalid? :description
    assert press.errors.invalid? :url
  end
  
end
