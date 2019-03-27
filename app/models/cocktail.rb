
class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch

  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
