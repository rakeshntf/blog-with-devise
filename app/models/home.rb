class Home < ActiveRecord::Base
  attr_accessible :name, :title,:avatar,:avatar_file_name,  :avatar_updated_at

 validates :name , :title , :presence => true
validates_format_of :name, :title, :with => /^[^0-9`!@#\$%\^&*+_=]+$/


  has_attached_file :avatar, :styles => { :medium => "300x300>", 
  	:thumb => "100x100>" }, 
  :default_url => "/images/:style/missing.png"
  validates :avatar, :presence => true
	
	has_many :comments


end
