class Cocktail < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }
  has_many :doses, dependent: :destroy
  # has_many :ingredients, through: :doses
end
