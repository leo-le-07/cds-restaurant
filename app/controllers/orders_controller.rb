class OrdersController < ApplicationController
  def index
  end

  def new
    @order = prepare_order
    @order.order_details = prepare_order_detail
  end

  def create
    @order = prepare_order(order_params)
    @order.order_details = prepare_order_detail

    if @order.order_details.size == 0
      flash[:warning] = "Không có món ăn nào trong giỏ hàng của bạn."
      render action: "new"
    else
      discount = Discount.find_by(code: params[:coupon])
      if discount
        @order.discount_id = discount.id
        @order.discount_price = calculate_discount_price(@order.total_price_item, discount.percent)
      else
        @order.discount_price = 0
      end
      if @order.save
        session[:order_details] = nil
        redirect_to controller: "order_success", action: "show", order_id: @order.id
      else
        flash[:warning] = @order.errors.full_messages.to_sentence
        render action: "new"
      end
    end
  end

  private
    def prepare_order(order_params = nil)
      if order_params
        @order = Order.new(order_params)
      else
        @order = Order.new
        @order.contact_detail = ContactDetail.new
      end
      @order.delivery_cost  = 20000
      @order.discount_price = 0
      @order
    end

    def prepare_order_detail
      order_details = []
      session[:order_details] ||= {}
      items = Item.items(session[:order_details].keys)
      if items
        items.each do |item|
          order_detail = OrderDetail.new
          order_detail.item = item
          order_detail.quantity = session[:order_details]["#{item.id}"]
          order_detail.price= item.price
          order_details.push(order_detail)
        end
      end
      order_details
    end

    def calculate_discount_price(total_price_item, discount_percent)
      result = total_price_item * discount_percent / 100
      result
    end

    def order_params
      params.require(:order).permit(contact_detail_attributes: [:name, :phone, :email])
    end
end
