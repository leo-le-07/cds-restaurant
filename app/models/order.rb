class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  has_one :contact_detail
  before_save :update_total_price

  accepts_nested_attributes_for :contact_detail
  # accepts_nested_attributes_for :order_details

  def total_price_item
    total_price_item = order_details.collect { |od| od.quantity * od.price }.sum
  end

  def total_price
    total_price_item + delivery_cost - discount_price
  end

  private
    def update_total_price
      self[:total_price] = total_price
      self[:total_item_price] = total_price_item
    end
end
