class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all.order({ :created_at => :desc })

    render({ :template => "photo_templates/index" })
  end

  def show
    @this_photo = Photo.where({ :id => params[:id] })

    render({ :template => "photo_templates/show" })
  end
end
