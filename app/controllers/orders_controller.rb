class OrdersController < ApplicationController
  def index
  end

  def new
    @order = prepare_order
    @order.contact_detail = ContactDetail.new
    @order.order_details = prepare_order_detail
  end

  def create
    @order = Order.new(order_params)
    @order.delivery_cost  = 20000
    @order.discount_price = 0
    @order.discount_id = 1
    @order.order_details = prepare_order_detail
    if @order.save
      flash[:notice] = "Chúc mừng bạn đã đặt hàng thành công"
      session[:order_details] = nil
      redirect_to "/menus"
    else
      flash[:notice] = @order.errors.full_messages.to_sentence
      render action: "new"
    end
  end

  private
    def prepare_order
      order                = Order.new
      order.delivery_cost  = 20000
      order.discount_price = 0
      order
    end

    def prepare_order_detail
      order_details = []
      session[:order_details] ||= {}
      items = Item.items(session[:order_details].keys)
      items.each do |item|
        order_detail = OrderDetail.new
        order_detail.item = item
        order_detail.quantity = session[:order_details]["#{item.id}"]
        order_detail.price= item.price
        order_details.push(order_detail)
      end
      order_details
    end

    def order_params
      params.require(:order).permit(contact_detail_attributes: [:name, :phone, :email])
    end
end
