require 'test_helper'

class BudetDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budet_detail = budet_details(:one)
  end

  test "should get index" do
    get budet_details_url
    assert_response :success
  end

  test "should get new" do
    get new_budet_detail_url
    assert_response :success
  end

  test "should create budet_detail" do
    assert_difference('BudetDetail.count') do
      post budet_details_url, params: { budet_detail: { amount: @budet_detail.amount, budget_id: @budet_detail.budget_id, product_id: @budet_detail.product_id, subtotal: @budet_detail.subtotal, unit_price: @budet_detail.unit_price } }
    end

    assert_redirected_to budet_detail_url(BudetDetail.last)
  end

  test "should show budet_detail" do
    get budet_detail_url(@budet_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_budet_detail_url(@budet_detail)
    assert_response :success
  end

  test "should update budet_detail" do
    patch budet_detail_url(@budet_detail), params: { budet_detail: { amount: @budet_detail.amount, budget_id: @budet_detail.budget_id, product_id: @budet_detail.product_id, subtotal: @budet_detail.subtotal, unit_price: @budet_detail.unit_price } }
    assert_redirected_to budet_detail_url(@budet_detail)
  end

  test "should destroy budet_detail" do
    assert_difference('BudetDetail.count', -1) do
      delete budet_detail_url(@budet_detail)
    end

    assert_redirected_to budet_details_url
  end
end
