class Belge < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_many :categories, through: :belge_categories
end
