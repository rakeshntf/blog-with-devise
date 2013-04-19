class StoreController < ApplicationController
  def index
   @homes = Home.all

  end

  def show
  	
  end
end
