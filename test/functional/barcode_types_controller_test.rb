require File.dirname(__FILE__) + '/../test_helper'

class BarcodeTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:barcode_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_barcode_type
    assert_difference('BarcodeType.count') do
      post :create, :barcode_type => { }
    end

    assert_redirected_to barcode_type_path(assigns(:barcode_type))
  end

  def test_should_show_barcode_type
    get :show, :id => barcode_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => barcode_types(:one).id
    assert_response :success
  end

  def test_should_update_barcode_type
    put :update, :id => barcode_types(:one).id, :barcode_type => { }
    assert_redirected_to barcode_type_path(assigns(:barcode_type))
  end

  def test_should_destroy_barcode_type
    assert_difference('BarcodeType.count', -1) do
      delete :destroy, :id => barcode_types(:one).id
    end

    assert_redirected_to barcode_types_path
  end
end
