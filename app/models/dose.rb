class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
 # has_and_belongs_to_many :cocktails
  validates :description, presence: true
  validates :cocktail, :uniqueness => { :scope => :ingredient }
end
