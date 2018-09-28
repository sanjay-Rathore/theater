class Booking < ApplicationRecord
	has_many :tickets
	belongs_to :show
	belongs_to :user
	belongs_to :theater
  validates :no_of_seats, presence: true,:numericality => true  
                    
end