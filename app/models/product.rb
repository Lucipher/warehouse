class Product < ActiveRecord::Base
	belongs_to :supplier
	belongs_to :in_order

	validates_presence_of :name, :pid, :supplier_id, :number
	attr_accessible :name, :pid, :supplier_id, :number
end
