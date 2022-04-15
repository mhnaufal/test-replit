require 'rails_helper'

RSpec.describe FoodsController do
  # INDEX
  describe 'GET #index' do
    context 'with params[:letter]' do
      it '[C.1]populates an array of foods starting with the letter'
      it '[C.2]renders the :index template'
    end

    context 'without params[:letter]' do
      it '[C.3]populates an array of all foods' do
        food = create(:food)
        get :show, params: { id: food }
        expect(assigns(:food)).to eq food
      end

      it '[C.4]renders the :index template' do
        food = create(:food)
        get :show, params: { id: food }
        expect(response).to render_template :show
      end
    end
  end

  # SHOW
  describe 'GET #show' do
    it '[C.5] assigns the requested food to @food'

    it '[c.6] renders the :show templates'
  end

  # NEW
  describe 'GET #new' do
    it '[C.7]assigns a new Food to @food'
    it '[C.8]renders the :new template'
  end

  # EDIT
  describe 'GET #edit' do
    it '[C.9] assigns the requested food to @food'
    it '[C.10] renders the :edit template'
  end

  # POST
  describe 'POST #create' do
    context 'with valid attributes' do
      it '[C.11] saves the new food in the database'
      it '[C.12] redirects to foods#show'
    end

    context 'with invalid attributes' do
      it '[C.13] does not save the new food in the database'
      it '[C.14] re-renders the :new template'
    end
  end

  # PATCH
  describe 'PATCH #update' do
    context 'with valid attributes' do
      it '[C.15] locates the requested @food'
      it "[C.16] changes @food's attributes"
      it '[C.17] redirects to the food'
    end

    context 'with invalid attributes' do
      it '[C.18] does not update the food in the database'
      it '[C.19] re-renders the :edit template'
    end
  end

  # DELETE
  describe 'DELETE #destroy' do
    it '[C.20] deletes the food from the database'
    it '[C.21] redirects to foods#index'
  end
end
