class CombineItemsInCart < ActiveRecord::Migration
  def up
  	Cart.all.each do |cart|
  		sums = cart.line_items.group(:home_id).sum(:quantity)
  		sums.each do |home_id,quantity|
  			if quantity > 1
  				cart.line_items.where(:home_id => home_id).delete_all

  				cart.line_items.create(:home_id => home_id , :quantity =>quantity)
  			end
  		end
  	end
  end

  def down
  	LineItem.where("quantity>1").each do |lineitem|
  		lineitem.quantity.times do
  			LineItem.create :cart_id =>lineitem.cart_id,
  			:home_id=>lineitem.home_id, :quantity => 1
  		end
  		lineitem.destroy
  	end
  	
  end
end
