class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :home_id,:home
  belongs_to :home
  belongs_to :cart
end
