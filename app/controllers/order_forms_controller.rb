class OrderFormsController < ApplicationController
	def update
		@user = User.find(params[:id])
		@user.update_attributes(order_params)
		session.delete(:order_id)
		redirect_to root_path
	end

	private

		def order_params
			params.require(:user).permit( :name, :email )
		end
end
