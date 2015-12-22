require 'test_helper'

class NewsEventsControllerTest < ActionController::TestCase
  setup do
    @news_event = news_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_event" do
    assert_difference('NewsEvent.count') do
      post :create, news_event: { description: @news_event.description, detail_url: @news_event.detail_url, image_url: @news_event.image_url, on: @news_event.on, title: @news_event.title }
    end

    assert_redirected_to news_event_path(assigns(:news_event))
  end

  test "should show news_event" do
    get :show, id: @news_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_event
    assert_response :success
  end

  test "should update news_event" do
    patch :update, id: @news_event, news_event: { description: @news_event.description, detail_url: @news_event.detail_url, image_url: @news_event.image_url, on: @news_event.on, title: @news_event.title }
    assert_redirected_to news_event_path(assigns(:news_event))
  end

  test "should destroy news_event" do
    assert_difference('NewsEvent.count', -1) do
      delete :destroy, id: @news_event
    end

    assert_redirected_to news_events_path
  end
end
