class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.user_id = params[:user_id]

    if @photo.save
      redirect_to photo_url(@photo.id)
    else
      render 'new_form'
    end

  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to photos_url
  end



  def update
    @photo = Photo.find(params[:id])
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.user_id = params[:user_id]

    if @photo.save
      redirect_to photo_url(@photo.id)
    else
      render 'edit_form'
    end

  end

  def index
    @photos = Photo.all
  end

end





