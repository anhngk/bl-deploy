require 'test_helper'

class GioHangsControllerTest < ActionController::TestCase
  setup do
    @gio_hang = gio_hangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gio_hangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gio_hang" do
    assert_difference('GioHang.count') do
      post :create, gio_hang: {  }
    end

    assert_redirected_to gio_hang_path(assigns(:gio_hang))
  end

  test "should show gio_hang" do
    get :show, id: @gio_hang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gio_hang
    assert_response :success
  end

  test "should update gio_hang" do
    patch :update, id: @gio_hang, gio_hang: {  }
    assert_redirected_to gio_hang_path(assigns(:gio_hang))
  end

  test "should destroy gio_hang" do
    assert_difference('GioHang.count', -1) do
      delete :destroy, id: @gio_hang
    end

    assert_redirected_to gio_hangs_path
  end
end
