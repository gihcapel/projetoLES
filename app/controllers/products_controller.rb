class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
   def create
    @product = Product.new(user_params)
    if @product.save
      flash[:success] = "Produto cadastrado com sucesso!"
      redirect_to @product
    else
      render 'new'
    end
   end

  private

    def user_params
      params.require(:product).permit(:name, :type, :storage, :perishability,
                                      :weightandquant, :price, :furnisher)
    end
end
