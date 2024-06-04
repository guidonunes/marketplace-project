class CheckoutController < ApplicationController
  before_action :authenticate_user!, :set_checkout, only: [:destroy, :show, :new]

  def new
    @checkout = Checkout.new
    @product = Product.find(params[:product_id])
  end

  def create
    @checkout = Checkout.new
    product = Product.find(params[:product_id])
    user = current_user
    @checkout.product = product
    @checkout.user = user

    if @checkout.save
      redirect_to new_product_checkouts_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @checkouts = Checkout.where(user: current_user)
  end

  def show
  end

  def destroy
    @checkout.destroy!
    redirect_to product_checkout_path(@checkout.product)
  end

  private

  def set_checkout
    @checkout = Checkout.find(params[:id])
  end
end
