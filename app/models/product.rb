class Product < ApplicationRecord
  validates :estimated_delivery, inclusion: 0..15
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
