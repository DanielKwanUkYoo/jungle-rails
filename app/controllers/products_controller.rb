class ProductsController < ApplicationController


  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @user = User.find(session[:user_id])
    @product = Product.find params[:id]
    @product_reviews = @product.ratings

    @review = Rating.new
  end

 

end
