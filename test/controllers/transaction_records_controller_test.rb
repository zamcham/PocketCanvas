require "test_helper"

class TransactionRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transaction_records_index_url
    assert_response :success
  end

  test "should get show" do
    get transaction_records_show_url
    assert_response :success
  end

  test "should get new" do
    get transaction_records_new_url
    assert_response :success
  end
end
