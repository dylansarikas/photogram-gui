class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all.order({ :created_at => :desc })

    render({ :template => "photo_templates/index" })
  end

  def show
    @this_photo = Photo.where({ :id => params[:id] })[0]

    render({ :template => "photo_templates/show" })
  end

  def create
    # photo = Photo.new(
    #   image: params[:image],
    #   caption: params[:caption],
    #   owner_id: params[:owner_id]
    # )
    photo = Photo.new
    photo.image = params[:image]
    photo.caption = params[:caption]
    photo.owner_id = params[:owner_id]
    photo.save

    redirect_to("/photos")

  end

  def update
    photo = Photo.find(params[:id])
    photo.image = params[:image]
    photo.caption = params[:caption]
    photo.save

    redirect_to("/photos/#{params[:id]}")
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.delete

    redirect_to("/photos")
  end
end
