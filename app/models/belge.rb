class Belge < ApplicationRecord
  belongs_to :user
  belongs_to :belge_category
  has_many :reviews
  has_many :bookings
  has_many :categories, through: :belge_categories

end
