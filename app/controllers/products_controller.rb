class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params([:id]))
  end

  def destroy
    @product.destroy!
    redirect_to products_path, notice: 'Product was successfully destroyed.', status: :see_other
  end
end
