class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy

    redirect_to user_path(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:body, :image, :user_id)
  end
end
