class SaleItemsController < ApplicationController
  def index
    @sale_items = SaleItem.all
  end

  def new 
    @sale_item = SaleItem.new
  end 

  def create
    @sale_item = SaleItem.new(sale_item_params)
    if @sale_item.save
      redirect_to sale_item_path(@sale_item), :flash => { :error => "Unable to save item" }
    else
      render :new
    end 
  end

  def show
    @sale_item = set_sale_itme
  end 

  def edit
     @sale_item = set_sale_itme
  end 

  def update
    @sale_item = set_sale_itme
    if @sale_item.update_attributes(sale_item_params)
      redirect_to sale_item_path(@sale_item)
    else
      render 'edit'
    end
  end

  def destroy
    @sale_item = set_sale_itme
    @sale_item.destroy

    redirect_to action: :index
  end


private
  def sale_item_params
    params.require(:sale_item).permit(:name,:description,:image,:price)
  end 

  def set_sale_itme
    sale_item = SaleItem.find(params[:id])
  end

end


