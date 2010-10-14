require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    link = Link.new
    assert !link.valid?
    assert link.errors.invalid? :title
    assert link.errors.invalid? :description
    assert link.errors.invalid? :url
  end
  
end
