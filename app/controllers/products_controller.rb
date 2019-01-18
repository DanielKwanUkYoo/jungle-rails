class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @product_review = Rating.find_by :produdct_id == params[:id]
  end

 

end
