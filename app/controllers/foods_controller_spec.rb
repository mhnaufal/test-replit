require 'rails_helper'

RSpec.describe FoodsController do
  describe 'GET #index' do
    context 'with params[:letter]' do
      it "[1] should return array of foods with letter" do
      end
    end
  end

  # PATCH
  describe 'PATCH #update' do
    context "with valid attributes" do
      
      it "locales the requested @food"
        patch :update, params: { id: @food, food: attributes_for(:food) }
        expect(assigns(:food).to eq @food)
      end
    
      it "changes @food' attributes"
      end
    
      it "redirects to the food"
      end

    end
  end
end