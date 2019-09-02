class Car < ApplicationRecord
  has_many :favourites, dependent: :destroy
end
