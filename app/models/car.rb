class Car < ApplicationRecord
  belongs_to :garage
  has_one_attached :image_car

  validates :model, presence: true
  validates :year, presence: true
  validates :brand, presence: true
  validates :color, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
