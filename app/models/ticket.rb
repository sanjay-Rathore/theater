class Ticket < ApplicationRecord
	belongs_to :booking
	belongs_to :audi
	belongs_to :movie
 
end