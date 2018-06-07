class ProductsController < ApplicationController
  
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
      redirect_to products_url
    else
      render 'new'
    end
   end
   
  def edit
    @product = Product.find(params[:id])
    render :edit
  end
  
  def update
  respond_to do |format|
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "Produto editado com sucesso"
      redirect_to @products
    else
      render :edit
    end
  end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
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
