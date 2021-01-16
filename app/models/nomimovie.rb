class Nomimovie < ApplicationRecord
  belongs_to :user
  # validates_presence_of :title, :year
  validates :title, presence: true
  validates :year, presence: true
end
