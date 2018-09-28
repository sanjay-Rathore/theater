class Theater < ApplicationRecord
	has_many :audis
	has_many :bookings
  validates :name,:address,presence: true
  validates :phone_no, :numericality => true               
end