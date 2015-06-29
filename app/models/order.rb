class Order < ActiveRecord::Base
  has_many  :order_items

  enum status: [ :Delivered, :Ordered]

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
end