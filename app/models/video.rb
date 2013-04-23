class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  has_attachment :content_type => :video, 
                 :storage => :file_system, 
                 :max_size => 300.megabytes

  #turn off attachment_fu's auto file renaming 
  #when you change the value of the filename field


end
