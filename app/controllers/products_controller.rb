class ProductsController < ApplicationController
  def index
    @products = if params[:search]
      Product.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
      else 
      Product.all
    end

    @products = @products.order('products.created_at DESC').page(params[:page])
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @product = Product.find(params[:id])
  
    if current_user
      @review = @product.reviews.build
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  def update
  end

  def new
    @product = Product.new
  end
  def create
  end


end
