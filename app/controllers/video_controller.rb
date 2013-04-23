class VideoController < ApplicationController
	def index 
		@videos = Video.find:all
		
	end

	def new
	end

end
