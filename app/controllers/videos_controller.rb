class ImagesController < PostsController

  def create
    @post = Image.new(friend_params)
    puts @post
    if @post.save
      redirect_to @post, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  def show
    @post = Image.find(params[:id])
  end

  private

  def friend_params
    params.require(:image).permit(:photo, :name)
  end
end
