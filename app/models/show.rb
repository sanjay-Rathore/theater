class Show < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :audi
  belongs_to :movie
  validates :time, presence: true	
  validates :movie_id,:audi_id,:available_seats, presence: true, numericality: { only_integer: true }
  before_create :initialize_available_seats

  private

  def initialize_available_seats
  	self.available_seats = self.audi.no_of_seats
  end
end
