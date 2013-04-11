class Home < ActiveRecord::Base
  attr_accessible :name, :title,:avatar,:avatar_file_name,  :avatar_updated_at

 
  has_attached_file :avatar, :styles => { :medium => "300x300>", 
  	:thumb => "100x100>" }, 
  :default_url => "/images/:style/missing.png"

has_many :comments


end
