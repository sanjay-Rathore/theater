class Booking < ApplicationRecord
 has_many :tickets, dependent: :destroy
 belongs_to :show
 belongs_to :user
 belongs_to :theater
 validates :no_of_seats, presence: true, numericality: { only_integer: true }
 validates :theater_id,:show_id,:user_id, presence: true
 validate :seat_limit
 after_create :seats_left
 after_save :create_tickets
 private

 def seat_limit
   if no_of_seats > self.show.available_seats
       errors.add(:no_of_seats, "Requested no of seats are not available.")
   end
 end 

 def seats_left   
   self.show.available_seats = self.show.available_seats - self.no_of_seats
   self.show.save
 end 

 def create_tickets
  self.no_of_seats.times do
      Ticket.create!(booking_id: self.id, movie_id: self.show.movie_id, audi_id: self.show.audi_id)
     end
 end
end

