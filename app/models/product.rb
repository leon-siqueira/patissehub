class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :estimated_delivery, inclusion: 0..15
end
