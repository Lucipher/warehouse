class Supplier < ActiveRecord::Base
  validates_presence_of :name, :mobile, :email, :interface
  attr_accessible :name, :mobile, :email, :address, :interface, :user_id
  has_many :products
  belongs_to :user
end
