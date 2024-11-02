class Car < ApplicationRecord
  belongs_to :garage

  validates :model, presence: true
  validates :year, presence: true
  validates :brand, presence: true
  validates :color, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
