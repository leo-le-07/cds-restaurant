class OrdersController < ApplicationController
  def index
  end
  def new
    @order = Order.new
    @contact_detail = ContactDetail.new
    @order_details = @order.order_details.new
  end
end
