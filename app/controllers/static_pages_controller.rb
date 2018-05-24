class StaticPagesController < ApplicationController

require 'flickraw'

FlickRaw.api_key = ENV["API_KEY"]
FlickRaw.shared_secret = ENV["SHARED_SECRET"]

def index
	begin
	if params[:/][:id]
		@photos = []
		@photoset = flickr.photos.search(user_id: params[:/][:id])
		@photoset.each do |ph|
			@photos << FlickRaw.url(ph)
		end
	end
	rescue
	end
end


end
