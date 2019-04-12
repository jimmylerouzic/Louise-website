class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to gallery_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:picture, :title, :description, :url)
  end
end
