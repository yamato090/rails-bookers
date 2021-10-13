require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get homes" do
    get blogs_homes_url
    assert_response :success
  end

end
