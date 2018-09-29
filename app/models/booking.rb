class Booking < ApplicationRecord
	has_many :tickets
	belongs_to :show
	belongs_to :user
	belongs_to :theater
  validates :no_of_seats, presence: true, numericality: { only_integer: true }
  validates :theater_id,:show_id,:user_id, presence: true, numericality: { only_integer: true }
    after_create :seats_left

    private
        def seats_left
            @show.available_seats = @show.available_seats - self.no_of_seats
end                
end
