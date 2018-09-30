class Booking < ApplicationRecord
	has_many :tickets
	belongs_to :show
	belongs_to :user
	belongs_to :theater
    validates :no_of_seats, presence: true, numericality: { only_integer: true }
    validates :theater_id,:show_id,:user_id, presence: true, numericality: { only_integer: true }
    validate :seat_limit
    after_create :available_seats
    private
    def seat_limit
        @show=Show.find(self.show_id)
       if no_of_seats > @show.available_seats
          errors.add(:no_of_seats, "All seats have been booked.")
       end
    end               
    def available_seats   
    	  @show=Show.find(self.show_id)
          @show.available_seats = @show.available_seats - self.no_of_seats
          @show.save
    end 
    
end