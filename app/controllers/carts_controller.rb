class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def checkout	 	
 		session.delete(:order_id)
  	redirect_to orders_path
  end
end