class V1::ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    @product = Products.new(product_params)
    if @product.save
      render json: @product
    else
      render json: @product.error
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      render json: @product
    end
    
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :introduction, :genre_id, :price, :image, :sales_status)
  end
  
end
