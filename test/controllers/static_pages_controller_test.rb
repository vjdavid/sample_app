require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @main_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get url' do
    get root_url
    assert_response :success
  end

  test 'should get home' do
    get root_url
    assert_response :success
    assert_select 'title', @main_title
  end

  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', 'Help | ' + @main_title
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', 'About | ' + @main_title
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', 'Contact | ' + @main_title
  end

end
