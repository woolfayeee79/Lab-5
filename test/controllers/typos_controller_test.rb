require 'test_helper'

class TyposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typo = typos(:one)
  end

  test "should get index" do
    get typos_url
    assert_response :success
  end

  test "should get new" do
    get new_typo_url
    assert_response :success
  end

  test "should create typo" do
    assert_difference('Typo.count') do
      post typos_url, params: { typo: { name: @typo.name, stuff: @typo.stuff } }
    end

    assert_redirected_to typo_url(Typo.last)
  end

  test "should show typo" do
    get typo_url(@typo)
    assert_response :success
  end

  test "should get edit" do
    get edit_typo_url(@typo)
    assert_response :success
  end

  test "should update typo" do
    patch typo_url(@typo), params: { typo: { name: @typo.name, stuff: @typo.stuff } }
    assert_redirected_to typo_url(@typo)
  end

  test "should destroy typo" do
    assert_difference('Typo.count', -1) do
      delete typo_url(@typo)
    end

    assert_redirected_to typos_url
  end
end
