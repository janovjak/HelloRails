class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def show
    render 'index'
  end

  def create 
    image = Image.create!(image_params)
    image.image.attach(params[:image][:image])
    image.save
    render 'index'
  end

private
def image_params
  params.require(:image).permit(:title, :keywords)
end
end
