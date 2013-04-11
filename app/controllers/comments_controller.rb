class CommentsController < ApplicationController

def create
  @home =Home.find(params[:home_id])
  @comment =@home.comments.create(params[:comment])
	redirect_to home_path(@home)

end

def destroy
    @home = Home.find(params[:home_id])
    @comment = @home.comments.find(params[:id])
    @comment.destroy
    redirect_to home_path(@home)
  end



end
