class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def checkout	 	
 		@order = current_order
 		@order.update_attributes(subtotal: current_order.subtotal, user_id: current_user.id)
 		@user = current_user
  end
end