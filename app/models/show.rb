class Show < ApplicationRecord
	has_many :bookings
	belongs_to :audi
  validates_format_of :time, with: /\A\d{2}:\d{2}\z
     validates :available_seats, presence: true , :numericality => true  
                  
end