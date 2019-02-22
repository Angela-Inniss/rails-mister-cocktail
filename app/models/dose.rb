class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
 end
  # a cocktail is present in a dose and is unique and a cocktail also has an
  # ingredient
