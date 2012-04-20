class Supplier < ActiveRecord::Base
  validates_presence_of :name, :mobile, :email
  attr_accessible :name, :mobile, :email, :address
  has_many :products
end
