class ImagesController < ApplicationController

  def create
    @post = Post.new(:resource_type=>"image", :user_id=>14)
    @post.save
    @image = Image.new(image_params)
    @image.post_id = @post.id
    if @image.save
      redirect_to root_path
    end
  end

  def show
    @post = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:image, :description)
  end
end
