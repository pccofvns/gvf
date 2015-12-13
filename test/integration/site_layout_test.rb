require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", '/', count: 2
    assert_select "a[href=?]", '/help', count: 1
    assert_select "a[href=?]", '/about', count: 1
  end
end
