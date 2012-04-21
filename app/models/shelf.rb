class Shelf < ActiveRecord::Base
	belongs_to :area
	has_many :layers
end
