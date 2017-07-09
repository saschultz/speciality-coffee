class ProductsController < ApplicationController
  def index
    @products = Product.three_most_recent
    @reviews = Product.most_reviews
    @localProducts = Product.local
  end

  def show
    @product = Product.find(params[:id])
  end

  def all
    @products = Product.all
    render :all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Coffee successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Coffee successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Coffee successfully deleted!"
      redirect_to products_path
    else
      render :show
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin, :notes)
  end

end
