class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy, :finish_signup]

  # GET /users/:id.:format
  def show
    @user = User.where(:username=>params[:display_name]).first
    @posts = @user.posts

    @post = Post.new
    @post.prose = Prose.new
    @post.quote = Quote.new
    @post.image = Image.new
    @post.video = Video.new


  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    accessible = [ :name, :email ] # extend with your own params
    accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
    params.require(:user).permit(accessible)
  end
end