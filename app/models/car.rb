class Car < ApplicationRecord
  has_many :favourites, dependent: :destroy

  validates :fuel, presence: true
end
