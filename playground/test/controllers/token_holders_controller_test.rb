require 'test_helper'

class TokenHoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @token_holder = token_holders(:one)
  end

  test "should get index" do
    get token_holders_url
    assert_response :success
  end

  test "should get new" do
    get new_token_holder_url
    assert_response :success
  end

  test "should create token_holder" do
    assert_difference('TokenHolder.count') do
      post token_holders_url, params: { token_holder: { name: @token_holder.name, token: @token_holder.token } }
    end

    assert_redirected_to token_holder_path(TokenHolder.last)
  end

  test "should show token_holder" do
    get token_holder_url(@token_holder)
    assert_response :success
  end

  test "should get edit" do
    get edit_token_holder_url(@token_holder)
    assert_response :success
  end

  test "should update token_holder" do
    patch token_holder_url(@token_holder), params: { token_holder: { name: @token_holder.name, token: @token_holder.token } }
    assert_redirected_to token_holder_path(@token_holder)
  end

  test "should destroy token_holder" do
    assert_difference('TokenHolder.count', -1) do
      delete token_holder_url(@token_holder)
    end

    assert_redirected_to token_holders_path
  end
end
