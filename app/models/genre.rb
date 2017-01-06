class Genre < ActiveRecord::Base
  has_many :restaurant_genres
  has_many :restaurants, through: :restaurant_genre
  validates :name, presence: true
  validates :order, presence: true, numericality: true
end
