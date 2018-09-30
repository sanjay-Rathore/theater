class Show < ApplicationRecord
  has_many :bookings
  belongs_to :audi
  belongs_to :movie
  validates :time, presence: true	
  validates :movie_id, presence: true, numericality: { only_integer: true }
  validates :audi_id, presence: true, numericality: { only_integer: true }
  validates :available_seats,presence: true, numericality: { only_integer: true }
end
