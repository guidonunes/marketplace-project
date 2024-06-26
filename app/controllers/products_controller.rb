class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[show edit update destroy]

  # GET/ products
  def index
    @products = Product.where(visible: true)
    if params[:q].present?
      @products = @products.where('item_name ILIKE ?', "%#{params[:q]}%")
    end
  end

  # GET/ products/:id
  def show; end

  # GET/ products/new
  def new
    @product = Product.new
  end

  # GET/ products/:id/edit
  def edit; end

  # POST/ products
  def create
    @product = Product.new(product_params)
    @product.user = current_user # check this out later
    if @product.save
      redirect_to @product, notice: "Product was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PUT/ products/:id
  # PATCH/ products/:id
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.visible = false
    @product.save!
    redirect_to my_products_products_path, notice: 'Product was successfully destroyed.', status: :see_other
  end

  def my_products
    @products = Product.where(user: current_user, visible: true)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:item_name, :description, :price, :photo)
  end
end
