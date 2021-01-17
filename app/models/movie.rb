class Movie < ApplicationRecord
  has_many :nomimovies, dependent: :destroy
  validates :title, presence: true
  validates :year, presence: true
  validates :image_url, presence: true
end