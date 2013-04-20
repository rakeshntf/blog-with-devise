class ApplicationController < ActionController::Base
  protect_from_forgery


 private
 def current_cart
 	Cart.find(session[:cart_id])
 	 rescue ActiveRecord::RecordNotFound
 	 	cart = Cart.create
 	 	session[:cart_id] = cart.id
 	 	cart
 	 end

def funky_method
	"#{self.name}.camelize"
	
end


autocomplete :home, :name,  :display_value => :funky_method

end
