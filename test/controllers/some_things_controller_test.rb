require 'test_helper'

class SomeThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @some_thing = some_things(:one)
  end

  test "should get index" do
    get some_things_url
    assert_response :success
  end

  test "should get new" do
    get new_some_thing_url
    assert_response :success
  end

  test "should create some_thing" do
    assert_difference('SomeThing.count') do
      post some_things_url, params: { some_thing: { val: @some_thing.val } }
    end

    assert_redirected_to some_thing_url(SomeThing.last)
  end

  test "should show some_thing" do
    get some_thing_url(@some_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_some_thing_url(@some_thing)
    assert_response :success
  end

  test "should update some_thing" do
    patch some_thing_url(@some_thing), params: { some_thing: { val: @some_thing.val } }
    assert_redirected_to some_thing_url(@some_thing)
  end

  test "should destroy some_thing" do
    assert_difference('SomeThing.count', -1) do
      delete some_thing_url(@some_thing)
    end

    assert_redirected_to some_things_url
  end
end
