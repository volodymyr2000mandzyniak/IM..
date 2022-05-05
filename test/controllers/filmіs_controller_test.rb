require "test_helper"

class FilmіsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filmі = filmіs(:one)
  end

  test "should get index" do
    get filmіs_url
    assert_response :success
  end

  test "should get new" do
    get new_filmі_url
    assert_response :success
  end

  test "should create filmі" do
    assert_difference('Filmі.count') do
      post filmіs_url, params: { filmі: { description: @filmі.description, name: @filmі.name } }
    end

    assert_redirected_to filmі_url(Filmі.last)
  end

  test "should show filmі" do
    get filmі_url(@filmі)
    assert_response :success
  end

  test "should get edit" do
    get edit_filmі_url(@filmі)
    assert_response :success
  end

  test "should update filmі" do
    patch filmі_url(@filmі), params: { filmі: { description: @filmі.description, name: @filmі.name } }
    assert_redirected_to filmі_url(@filmі)
  end

  test "should destroy filmі" do
    assert_difference('Filmі.count', -1) do
      delete filmі_url(@filmі)
    end

    assert_redirected_to filmіs_url
  end
end
