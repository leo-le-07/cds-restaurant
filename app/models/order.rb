class Order < ApplicationRecord
  belongs_to :discount
  has_many :order_details, dependent: :destroy
end
