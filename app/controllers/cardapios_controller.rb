class CardapiosController < ApplicationController
  
  def index
    @cardapios = Cardapio.paginate(page: params[:page])
  end
  
  def show
    @cardapio = Cardapio.find(params[:id])
  end
  
  def new
    @cardapio = Cardapio.new
  end
  
  def create
    @cardapio = Cardapio.new(cardapio_params)    
    if @cardapio.save
      flash[:success] = "Item adicionado com sucesso"
      redirect_to cardapio_url
    else
      render 'new'
    end
  end
  
  def edit
    @cardapio = Cardapio.find(params[:id])
  end
  
  def update
    @cardapio = Cardapio.find(params[:id])
    if @cardapio.update_attributes(cardapio_params)
      flash[:success] = "Item editado com sucesso"
      redirect_to @cardapio
    else
      render 'edit'
    end
  end
  
   def destroy
    Cardapio.find(params[:id]).destroy
    flash[:success] = "Item deletado"
    redirect_to cardapios_url
   end
  
   private

    def cardapio_params
      params.require(:cardapio).permit(:nome, :descricao, :preco )
    end
  
end
