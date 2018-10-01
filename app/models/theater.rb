class Theater < ApplicationRecord
  has_many :audis, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address,:phone_no, presence: true
  validates :phone_no, uniqueness: true, length: { is: 10 }, numericality: { only_integer: true }        
end