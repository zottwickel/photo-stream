class StaticPagesController < ApplicationController

  def home
  end

  def stream
  	@photos = flickr.photos.getPhotos(user_id: params[:id])
  end
end
