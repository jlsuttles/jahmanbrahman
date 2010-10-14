require 'test_helper'

class AboutTheBandTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    about = AboutTheBand.new
    assert !about.valid?
    assert about.errors.invalid? :title
    assert about.errors.invalid? :description
  end
  
end
