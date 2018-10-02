class Movie < ApplicationRecord
  has_many :shows, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :audis, through: :shows
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: %w(U UA A),
  message: "%{value} is no valid Catagory" }           
end