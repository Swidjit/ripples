class PostsController < ApplicationController
  respond_to :js
  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)

    respond_with do |format|
      format.js {render 'create'}
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      respond_with do |format|
        format.js {render 'destroy', :locals=>{id:@post.id}}
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :resource_type, :tag_list, video_attributes: [:video, :description], image_attributes: [:image], prose_attributes: [:text], quote_attributes: [:text, :author])
  end
end
