class Party < ActiveRecord::Base
  has_many :orders
  has_many :items, through: :orders
  belongs_to :server

  enum status: {open: 0, closed: 1}
end
