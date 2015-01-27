class PagesController < ApplicationController

  def home
    @top_users = User.top_players
    @top_posts = Post.popular.all
  end

  def index
    @title = params[:page_name].titleize
    render params[:page_name]
  end
end
