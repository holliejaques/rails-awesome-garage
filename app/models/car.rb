class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, :favourites, dependent: :destroy
  validates :model, presence: true
  validates :brand, presence: true
  validates :year, presence: true
  validates :fuel, presence: true
end
