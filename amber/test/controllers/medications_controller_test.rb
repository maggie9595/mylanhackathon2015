require 'test_helper'

class MedicationsControllerTest < ActionController::TestCase
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post :create, medication: { TE_code: @medication.TE_code, active_ingredients: @medication.active_ingredients, company: @medication.company, form: @medication.form, market_status: @medication.market_status, name: @medication.name, prod_number: @medication.prod_number }
    end

    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should show medication" do
    get :show, id: @medication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication
    assert_response :success
  end

  test "should update medication" do
    patch :update, id: @medication, medication: { TE_code: @medication.TE_code, active_ingredients: @medication.active_ingredients, company: @medication.company, form: @medication.form, market_status: @medication.market_status, name: @medication.name, prod_number: @medication.prod_number }
    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete :destroy, id: @medication
    end

    assert_redirected_to medications_path
  end
end
