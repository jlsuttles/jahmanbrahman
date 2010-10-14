require 'test_helper'

class BandPhotoTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    photo = BandPhoto.new
    assert !photo.valid?
    assert photo.errors.invalid? :title
    assert photo.errors.invalid? :description
  end
  
end
