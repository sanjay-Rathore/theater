class Theater < ApplicationRecord
  has_many :audis
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_no, uniqueness: true, numericality: { only_integer: true }        
end