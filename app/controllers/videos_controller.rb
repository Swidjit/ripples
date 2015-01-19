class VideosController < PostsController

  def create
    @post = Video.new(friend_params)
    puts @post
    if @post.save
      redirect_to @post, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  def show
    @post = Video.find(params[:id])
  end

  private

  def friend_params
    params.require(:video).permit(:video, :name)
  end
end
