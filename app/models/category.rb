class Category < ApplicationRecord
  has_many :belge_categories
  has_many :belges, through: :belge_categories
end
