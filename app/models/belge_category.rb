class BelgeCategory < ApplicationRecord
  has_many :categories
  has_many :belges
end
