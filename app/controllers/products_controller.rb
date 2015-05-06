class ProductsController < ApplicationController
  def index
    @products = if params[:search]
      Product.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
      else 
      Product.all
    end

    if request.xhr?
      render @products
    end
  end

  def show
    @product = Product.find(params[:id])
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
