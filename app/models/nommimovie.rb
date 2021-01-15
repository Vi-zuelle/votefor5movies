class Nommimovie < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :year, presence: true
end
