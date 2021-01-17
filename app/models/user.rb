class User < ApplicationRecord
  has_many :movies
  has_many :nomimovies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :validatable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable
  validates :name, presence: true
end
