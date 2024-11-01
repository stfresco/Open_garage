class Garage < ApplicationRecord
  belongs_to :user

  has_many :car

  validates :name, presence: true
  validates :address, presence: true
end
