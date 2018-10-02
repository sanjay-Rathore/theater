class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :phone_no,presence: true, length: { is: 10 }, uniqueness: true, numericality: { only_integer: true }                 
end