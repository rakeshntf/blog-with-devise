class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy

  def add_home(home_id)
  	current_item = line_items.where(:home_id => home_id).first
  	if current_item
  		current_item.quantity += 1
  	else 
  		current_item = LineItem.new(:home_id =>home_id)
  		line_items << current_item
  	end
  	current_item
  end	



end
