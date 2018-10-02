class Ticket < ApplicationRecord
  belongs_to :booking
  belongs_to :audi
  belongs_to :movie
  validates :booking_id,:audi_id,:movie_id, presence: true, numericality: { only_integer: true }
end