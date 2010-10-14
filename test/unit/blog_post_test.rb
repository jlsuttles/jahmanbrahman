require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase

  test "should be invalid with empty attributes" do
    post = BlogPost.new
    assert !post.valid?
    assert post.errors.invalid? :title
    assert post.errors.invalid? :description
  end
  
end
