require 'test_helper'

class LocalesControllerTest < ActionController::TestCase
  setup do
    @locale = locales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locale" do
    assert_difference('Locale.count') do
      post :create, locale: { code: @locale.code, icon_class: @locale.icon_class, name: @locale.name, position: @locale.position, right_to_left: @locale.right_to_left }
    end

    assert_redirected_to locale_path(assigns(:locale))
  end

  test "should show locale" do
    get :show, id: @locale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locale
    assert_response :success
  end

  test "should update locale" do
    patch :update, id: @locale, locale: { code: @locale.code, icon_class: @locale.icon_class, name: @locale.name, position: @locale.position, right_to_left: @locale.right_to_left }
    assert_redirected_to locale_path(assigns(:locale))
  end

  test "should destroy locale" do
    assert_difference('Locale.count', -1) do
      delete :destroy, id: @locale
    end

    assert_redirected_to locales_path
  end
end
