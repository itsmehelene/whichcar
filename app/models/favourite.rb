class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :car, dependent: :destroy

  validates :car, uniqueness: { scope: :user }
end
