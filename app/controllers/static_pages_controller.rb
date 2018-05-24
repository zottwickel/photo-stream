class StaticPagesController < ApplicationController

require 'flickraw'

def index
	@photos = Photo.all
end

end
