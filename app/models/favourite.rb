class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :car, dependent: :destroy
end
