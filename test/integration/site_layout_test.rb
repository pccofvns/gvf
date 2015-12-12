require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", '/', count: 3
    assert_select "a[href=?]", '/help', count: 0
    assert_select "a[href=?]", '/about', count: 0
  end
end
