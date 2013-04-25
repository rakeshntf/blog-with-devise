module ApplicationHelper

 def youtube_video(url)
 	
    render :partial => 'homes/video', :locals => { :url => url }
  end 



end
