class Audi < ApplicationRecord
	belongs_to :theater
	has_many :shows
	has_many :tickets
	has_many :movies, through: :shows
	
  validates :no, presence: true
  validates :no_of_seats, presence: true
                    
end