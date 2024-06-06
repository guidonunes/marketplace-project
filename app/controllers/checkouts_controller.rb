class CheckoutsController < ApplicationController
  before_action :set_checkout, only: [:destroy, :show]
  before_action :set_product, only: [:new, :create]

  def new
    @checkout = Checkout.new
  end

  def create
    @checkout = Checkout.new
    user = current_user
    @checkout.product = @product
    @checkout.user = user

    if @checkout.save
      redirect_to checkouts_path
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
    @checkout = Checkout.find(params[:format])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
