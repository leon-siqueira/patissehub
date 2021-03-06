class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query]
      @products = Product.search_by_name_and_description(params[:query])
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.save

    redirect_to profiles_path
  end

  def show
    @order = Order.new
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to profiles_path
  end

  def destroy
    @product.destroy
    redirect_to profiles_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :estimated_delivery, :description, :photo)
  end
end
