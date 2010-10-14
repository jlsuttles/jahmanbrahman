require 'test_helper'

class AboutTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    about = About.new
    assert !about.valid?
    assert about.errors.invalid? :title
    assert about.errors.invalid? :description
  end
  
end
