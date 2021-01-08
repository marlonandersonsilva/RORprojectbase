require 'test_helper'

class LesionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesion = lesions(:one)
  end

  test "should get index" do
    get lesions_url
    assert_response :success
  end

  test "should get new" do
    get new_lesion_url
    assert_response :success
  end

  test "should create lesion" do
    assert_difference('Lesion.count') do
      post lesions_url, params: { lesion: { name: @lesion.name } }
    end

    assert_redirected_to lesion_url(Lesion.last)
  end

  test "should show lesion" do
    get lesion_url(@lesion)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesion_url(@lesion)
    assert_response :success
  end

  test "should update lesion" do
    patch lesion_url(@lesion), params: { lesion: { name: @lesion.name } }
    assert_redirected_to lesion_url(@lesion)
  end

  test "should destroy lesion" do
    assert_difference('Lesion.count', -1) do
      delete lesion_url(@lesion)
    end

    assert_redirected_to lesions_url
  end
end
