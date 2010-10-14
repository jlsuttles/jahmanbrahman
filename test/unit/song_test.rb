require 'test_helper'

class SongTest < ActiveSupport::TestCase
  
  test "should be invalid with empty attributes" do
    song = Song.new
    assert !song.valid?
    assert song.errors.invalid? :title
    assert song.errors.invalid? :description
  end
  
end
