class PostsController < ApplicationController
  respond_to :js
  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render :partial => 'create.js'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content_type, :content)
  end
end
