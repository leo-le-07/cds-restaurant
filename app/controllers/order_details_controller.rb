class OrderDetailsController < ApplicationController
  def add
    add_to_cart(params[:item_id])
    item = Item.find(params[:item_id])
    flash[:add_item_success] = "Món #{item.name} đã được thêm vào giỏ hàng của bạn thành công."
    redirect_to "/orders/new"
  end

  private
    def add_to_cart(item_id)
      session[:order_details] ||= {}
      existed = false
      session[:order_details].each do |key, value|
        if key == item_id
          existed = true
          session[:order_details][key] = value + 1
          break
        end
      end
      unless existed
        session[:order_details][item_id] = 1
      end
    end
end
