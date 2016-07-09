class ContactDetail < ApplicationRecord
  belongs_to :order, required: false

  validates :name, presence: true
  validates :phone, presence: true
  validates :phone, numericality: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
