class VideosController < ApplicationController

  def create
    @post = Post.new(:resource_type=>"video", :user_id=>14)

    video_params[:post_id] = @post.id
    @video = Video.new(video_params)
    @post.resource_id = @video.id
    @post.save
    if @video.save
      redirect_to root_path
    end
  end

  def show
    @post = Image.find(params[:id])
  end

  private

  def video_params
    params.require(:video).permit(:video, :description)
  end
end
