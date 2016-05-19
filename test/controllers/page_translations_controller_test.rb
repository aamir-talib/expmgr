require 'test_helper'

class PageTranslationsControllerTest < ActionController::TestCase
  setup do
    @page_translation = page_translations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_translations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_translation" do
    assert_difference('PageTranslation.count') do
      post :create, page_translation: { body: @page_translation.body, locale_id: @page_translation.locale_id, page_id: @page_translation.page_id, title: @page_translation.title, url_code: @page_translation.url_code }
    end

    assert_redirected_to page_translation_path(assigns(:page_translation))
  end

  test "should show page_translation" do
    get :show, id: @page_translation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_translation
    assert_response :success
  end

  test "should update page_translation" do
    patch :update, id: @page_translation, page_translation: { body: @page_translation.body, locale_id: @page_translation.locale_id, page_id: @page_translation.page_id, title: @page_translation.title, url_code: @page_translation.url_code }
    assert_redirected_to page_translation_path(assigns(:page_translation))
  end

  test "should destroy page_translation" do
    assert_difference('PageTranslation.count', -1) do
      delete :destroy, id: @page_translation
    end

    assert_redirected_to page_translations_path
  end
end
