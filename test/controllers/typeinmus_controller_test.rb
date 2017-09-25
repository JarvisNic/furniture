require 'test_helper'

class TypeinmusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typeinmu = typeinmus(:one)
  end

  test "should get index" do
    get typeinmus_url
    assert_response :success
  end

  test "should get new" do
    get new_typeinmu_url
    assert_response :success
  end

  test "should create typeinmu" do
    assert_difference('Typeinmu.count') do
      post typeinmus_url, params: { typeinmu: { name: @typeinmu.name } }
    end

    assert_redirected_to typeinmu_url(Typeinmu.last)
  end

  test "should show typeinmu" do
    get typeinmu_url(@typeinmu)
    assert_response :success
  end

  test "should get edit" do
    get edit_typeinmu_url(@typeinmu)
    assert_response :success
  end

  test "should update typeinmu" do
    patch typeinmu_url(@typeinmu), params: { typeinmu: { name: @typeinmu.name } }
    assert_redirected_to typeinmu_url(@typeinmu)
  end

  test "should destroy typeinmu" do
    assert_difference('Typeinmu.count', -1) do
      delete typeinmu_url(@typeinmu)
    end

    assert_redirected_to typeinmus_url
  end
end
