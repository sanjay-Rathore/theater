class Audi < ApplicationRecord
	belongs_to :theater
	has_many :shows
	has_many :tickets
	has_many :movies, through: :shows
    validates :num ,presence: true, numericality: { only_integer: true }
    validates :no_of_seats, presence: true, numericality: { only_integer: true }
    validates :theater_id, presence: true, numericality: { only_integer: true }
                    
end