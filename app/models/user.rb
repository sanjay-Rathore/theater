class User < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :phone_no,presence: true, uniqueness: true, numericality: { only_integer: true }                 
end