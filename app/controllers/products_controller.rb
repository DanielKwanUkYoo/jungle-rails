class ProductsController < ApplicationController


  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    if current_user
      @user = User.find(session[:user_id])
    end
    @product = Product.find params[:id]
    @product_reviews = @product.ratings

    @review = Rating.new
  end

 

end
