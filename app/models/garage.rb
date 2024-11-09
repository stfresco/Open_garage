class Garage < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  has_many :cars, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
end
