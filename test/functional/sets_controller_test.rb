require 'test_helper'

class SetsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Set.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Set.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Set.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to set_url(assigns(:set))
  end

  def test_edit
    get :edit, :id => Set.first
    assert_template 'edit'
  end

  def test_update_invalid
    Set.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Set.first
    assert_template 'edit'
  end

  def test_update_valid
    Set.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Set.first
    assert_redirected_to set_url(assigns(:set))
  end

  def test_destroy
    set = Set.first
    delete :destroy, :id => set
    assert_redirected_to sets_url
    assert !Set.exists?(set.id)
  end
end
