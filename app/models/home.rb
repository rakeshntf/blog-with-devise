class Home < ActiveRecord::Base
def funky_method
	"#{self.name}.camelize"
end
	  attr_accessible :name, :title,:avatar,:avatar_file_name,  :avatar_updated_at
		 validates :name , :title , :presence => true
			validates_format_of :name, :title, :with => /^[^0-9`!@#\$%\^&*+_=]+$/
			  has_attached_file :avatar, :styles => { :medium => "300x300>", 
			  :thumb => "100x100>" }, 
			  :default_url => "/images/:style/missing.png"
		validates :avatar, :presence => true
has_many :comments
default_scope :order => 'name'
has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
			return true
		else
			errors[:base] << "Line Items present"
			returen false

		end
	end





end
