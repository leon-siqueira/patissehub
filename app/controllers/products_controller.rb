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
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
