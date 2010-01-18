require 'test_helper'

class LoyaltyCardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loyalty_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loyalty_card" do
    assert_difference('LoyaltyCard.count') do
      post :create, :loyalty_card => { }
    end

    assert_redirected_to loyalty_card_path(assigns(:loyalty_card))
  end

  test "should show loyalty_card" do
    get :show, :id => loyalty_cards(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => loyalty_cards(:one).to_param
    assert_response :success
  end

  test "should update loyalty_card" do
    put :update, :id => loyalty_cards(:one).to_param, :loyalty_card => { }
    assert_redirected_to loyalty_card_path(assigns(:loyalty_card))
  end

  test "should destroy loyalty_card" do
    assert_difference('LoyaltyCard.count', -1) do
      delete :destroy, :id => loyalty_cards(:one).to_param
    end

    assert_redirected_to loyalty_cards_path
  end
end
