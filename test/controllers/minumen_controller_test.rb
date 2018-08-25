require 'test_helper'

class MinumenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minuman = minumen(:one)
  end

  test "should get index" do
    get minumen_url
    assert_response :success
  end

  test "should get new" do
    get new_minuman_url
    assert_response :success
  end

  test "should create minuman" do
    assert_difference('Minuman.count') do
      post minumen_url, params: { minuman: {  } }
    end

    assert_redirected_to minuman_url(Minuman.last)
  end

  test "should show minuman" do
    get minuman_url(@minuman)
    assert_response :success
  end

  test "should get edit" do
    get edit_minuman_url(@minuman)
    assert_response :success
  end

  test "should update minuman" do
    patch minuman_url(@minuman), params: { minuman: {  } }
    assert_redirected_to minuman_url(@minuman)
  end

  test "should destroy minuman" do
    assert_difference('Minuman.count', -1) do
      delete minuman_url(@minuman)
    end

    assert_redirected_to minumen_url
  end
end
