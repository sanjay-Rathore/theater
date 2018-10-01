class Audi < ApplicationRecord
  belongs_to :theater
  has_many :shows, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :movies, through: :shows
  validates :num , :theater_id, :no_of_seats,presence: true, numericality: { only_integer: true }
                    
end