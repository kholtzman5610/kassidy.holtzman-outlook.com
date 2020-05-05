class Order < ApplicationRecord
  belongs_to :customer, optional: true
  validates :product_name, presence: true
  validates :product_count, presence: true
  validates :product_count, numericality: {only_integer: true}
  validates :customer_id, presence: true
end
