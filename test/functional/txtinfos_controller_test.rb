require 'test_helper'

class TxtinfosControllerTest < ActionController::TestCase
  setup do
    @txtinfo = txtinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:txtinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create txtinfo" do
    assert_difference('Txtinfo.count') do
      post :create, txtinfo: { content: @txtinfo.content, tag: @txtinfo.tag }
    end

    assert_redirected_to txtinfo_path(assigns(:txtinfo))
  end

  test "should show txtinfo" do
    get :show, id: @txtinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @txtinfo
    assert_response :success
  end

  test "should update txtinfo" do
    put :update, id: @txtinfo, txtinfo: { content: @txtinfo.content, tag: @txtinfo.tag }
    assert_redirected_to txtinfo_path(assigns(:txtinfo))
  end

  test "should destroy txtinfo" do
    assert_difference('Txtinfo.count', -1) do
      delete :destroy, id: @txtinfo
    end

    assert_redirected_to txtinfos_path
  end
end
