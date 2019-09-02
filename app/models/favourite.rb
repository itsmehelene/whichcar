class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :car, uniqueness: { scope: :user }
end
