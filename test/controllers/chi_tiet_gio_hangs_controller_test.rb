require 'test_helper'

class ChiTietGioHangsControllerTest < ActionController::TestCase
  setup do
    @chi_tiet_gio_hang = chi_tiet_gio_hangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chi_tiet_gio_hangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chi_tiet_gio_hang" do
    assert_difference('ChiTietGioHang.count') do
      post :create, chi_tiet_gio_hang: { gio_hang_id: @chi_tiet_gio_hang.gio_hang_id, hang_hoa_id: @chi_tiet_gio_hang.hang_hoa_id }
    end

    assert_redirected_to chi_tiet_gio_hang_path(assigns(:chi_tiet_gio_hang))
  end

  test "should show chi_tiet_gio_hang" do
    get :show, id: @chi_tiet_gio_hang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chi_tiet_gio_hang
    assert_response :success
  end

  test "should update chi_tiet_gio_hang" do
    patch :update, id: @chi_tiet_gio_hang, chi_tiet_gio_hang: { gio_hang_id: @chi_tiet_gio_hang.gio_hang_id, hang_hoa_id: @chi_tiet_gio_hang.hang_hoa_id }
    assert_redirected_to chi_tiet_gio_hang_path(assigns(:chi_tiet_gio_hang))
  end

  test "should destroy chi_tiet_gio_hang" do
    assert_difference('ChiTietGioHang.count', -1) do
      delete :destroy, id: @chi_tiet_gio_hang
    end

    assert_redirected_to chi_tiet_gio_hangs_path
  end
end
