class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :delete]

  def index
    @orders = current_user.orders
  end

  def show
    @orders = Order.where(user_id: current_user)
  end

  def new
    @product = Product.find(params[:product_id])
    @order = Order.new
  end

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new
    @order.user = current_user
    @order.product = @product
    if @order.save
      redirect_to products_path
    else
      render :new
    end
  end

  def delete
    @order.destroy
  end

  private

  def set_order
    @order = Order.find(user_id: current_user.id, product_id: params[:id])
  end

  def order_params
  end
end
