class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    # create, save, update, & respective bang versions => triggers validations, save to db if valid
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private
  # params.require(:post)
  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end