class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  @allowed_categories = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: @allowed_categories
end
