class GalleryController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def show
    print params
    id = params[:id]
    @gallery = Gallery.find(id)
  end
end
