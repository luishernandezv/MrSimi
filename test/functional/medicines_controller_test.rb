require 'test_helper'

class MedicinesControllerTest < ActionController::TestCase
  setup do
    @medicine = medicines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicine" do
    assert_difference('Medicine.count') do
      post :create, medicine: @medicine.attributes
    end

    assert_redirected_to medicine_path(assigns(:medicine))
  end

  test "should show medicine" do
    get :show, id: @medicine.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicine.to_param
    assert_response :success
  end

  test "should update medicine" do
    put :update, id: @medicine.to_param, medicine: @medicine.attributes
    assert_redirected_to medicine_path(assigns(:medicine))
  end

  test "should destroy medicine" do
    assert_difference('Medicine.count', -1) do
      delete :destroy, id: @medicine.to_param
    end

    assert_redirected_to medicines_path
  end
end
