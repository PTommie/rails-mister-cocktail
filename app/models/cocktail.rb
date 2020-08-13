class Cocktail < ApplicationRecord
 # has_and_belongs_to_many :doses, dependent: :destroy
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end
