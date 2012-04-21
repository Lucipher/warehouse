# -*- encoding: utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  has_many :out_orders
  belongs_to :in_orders

  def role2s
  	case self.role
  	when 5
  		return "普通用户"
  	when 4
  		return "仓库管理"
  	when 3
  		return "系统管理"
  	else
  		return "其他类型"
  	end
  end

end
