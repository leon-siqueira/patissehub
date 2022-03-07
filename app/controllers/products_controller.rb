class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:query].present?
    #   @query = params[:query]
    #   @products = Product.where(params[:query])
    #   # Preventing SQL Injection and Database error for
    #   # unknown characters
    # else
    @products = Product.all
    # end
  end

  def show
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product.update(product_params)

    redirect_to my_profile_path
  end

  def destroy
    @product.destroy
    redirect_to my_profile_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :estimated_delivery, :description)
  end
end
