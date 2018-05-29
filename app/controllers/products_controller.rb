class ProductsController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
   
  def index
    @products = Product.paginate(page: params[:page])
  end

  
  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
   def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Produto cadastrado com sucesso!"
      redirect_to @product
    else
      render 'new'
    end
   end
   
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "Produto editado com sucesso"
      redirect_to @product
    else
      render 'edit'
    end
  end
  
  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Produto deletado"
    redirect_to products_url
  end

  private

  def product_params
      params.require(:product).permit(:name, :storage, :perishability,
                                      :weightandquant, :price, :furnisher)
  end
  
  # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
