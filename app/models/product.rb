class Product < ActiveRecord::Base
	belongs_to :supplier
	belongs_to :in_order
	has_many :out_order_items

	validates_presence_of :name, :pid, :number
	attr_accessible :name, :pid, :supplier_id, :number
end
