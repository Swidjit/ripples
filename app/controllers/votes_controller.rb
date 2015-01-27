class VotesController < ApplicationController
  respond_to :js

  def create
    @vote = Vote.where(:post_id=>params[:post_id], :user_id=>14)
    if @vote.present?
      @vote.first.destroy
      respond_with do |format|
        format.js {render 'destroy', :locals=>{id:params[:post_id]}}
      end
    else
      @vote = Vote.new(:post_id=>params[:post_id], :user_id=>14)
      @vote.save
      respond_with do |format|
        format.js {render 'create', :locals=>{id:params[:post_id]}}
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :resource_type, :tag_list, video_attributes: [:video, :description], image_attributes: [:image], prose_attributes: [:text], quote_attributes: [:text, :author])
  end
end
