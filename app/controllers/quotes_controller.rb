class QuotesController < ApplicationController

  def create
    @post = Post.new(:resource_type=>"quote", :user_id=>14)
    @post.save
    @quote = Quote.new(quote_params)
    @quote.post_id = @post.id
    if @quote.save
      redirect_to root_path
    end
  end


  private

  def quote_params
    params.require(:quote).permit(:text, :author)
  end
end
