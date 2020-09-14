class PostsController < ApplicationController
  before_action :set_post!, only: %i[show edit update]

  def index
    @posts = Post.all
  end

  def show; end

  private

  def set_post!
    @post = Post.friendly.find(params[:id])
  end
end
