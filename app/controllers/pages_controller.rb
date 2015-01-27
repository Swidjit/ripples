class PagesController < ApplicationController

  def home
    @top_users = User.all
    @top_posts = Post.all
  end

  def index
    @title = params[:page_name].titleize
    render params[:page_name]
  end
end
