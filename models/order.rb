class Order <ActiveRecord::Base
  belongs_to :item
  belongs_to :party

   enum status: {open: 0, delivered: 1, closed: 2}


end
