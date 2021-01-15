class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :validatable
  has_many :nomimovies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  validates :name, presence: true
end
