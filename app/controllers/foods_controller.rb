class FoodsController < ApplicationController
  def index
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
