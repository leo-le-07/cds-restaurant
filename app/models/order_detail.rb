class OrderDetail < ApplicationRecord
  belongs_to :order, inverse_of: :order_details
  belongs_to :item
  # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  before_save :update_total_price

  def item
    Item.find(item_id)
  end

  def total_price
    return (quantity * price)
  end

  private
    def update_total_price
      self[:total_price] = total_price
    end
end
