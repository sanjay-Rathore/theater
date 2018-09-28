class User < ApplicationRecord
	has_many :bookings
  validates :name, presence: true
   validates :age, presence: true ,:numericality => true  
   validates :phone_no, presence: true  ,:numericality => true                 
end