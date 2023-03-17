require "test_helper"

class PayloadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payload = payloads(:successful_payload)
  end

  
  test "should accept payload as params" do
    assert_nothing_raised do
      post payloads_url, params: { payload: @payload }, as: :json
    end
  end

  test "should not other params" do
    assert_raises StandardError do
      post payloads_url, params: { different_params: @payload }, as: :json
    end
  end
    
end
