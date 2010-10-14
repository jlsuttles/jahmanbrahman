require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    show = Show.new
    assert !show.valid?
    assert show.errors.invalid? :title
    assert show.errors.invalid? :description
  end
  
end
