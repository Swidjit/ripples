class ProsesController < ApplicationController

  def create
    @post = Post.new(:resource_type=>"prose", :user_id=>14)
    @post.save
    @text = Prose.new(text_params)
    @text.post_id = @post.id
    if @text.save
      redirect_to root_path
    end
  end


  private

  def text_params
    params.require(:prose).permit(:text)
  end
end
