class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all.order({ :created_at => :desc })

    render({ :template=>"photo_templates/index" })
  end
end
