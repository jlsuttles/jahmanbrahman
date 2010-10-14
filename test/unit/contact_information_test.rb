require 'test_helper'

class ContactInformationTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    contact = ContactInformation.new
    assert !contact.valid?
    assert contact.errors.invalid? :title
    assert contact.errors.invalid? :description
  end
  
end
