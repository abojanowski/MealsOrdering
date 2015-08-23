class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def edit
  	@order = Order.find(params[:id])
    @statuses = Order.statuses
  end

  def create
  end

  def update
  	@order = Order.find(params[:id])
    @statuses = Order.statuses
    if @order.update_attributes(order_params)
      redirect_to orders_path
      flash[:success] = "The delivery status was changing."
    else
      render "edit"
    end
  end
  
	private
  
    def order_params
      params.require(:order).permit(:subtotal, :status)
    end

    # def order_params
    #   params.require(:order).permit(:subtotal, :status,
    #     user: [:name, :email]
    #     )
    # end
end
