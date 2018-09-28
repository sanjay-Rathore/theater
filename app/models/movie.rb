class Movie < ApplicationRecord
	has_many :show
	has_many :ticket
	has_many :audi, through: :show

  validates :name, presence: true
   validates :category, presence: true                 
end