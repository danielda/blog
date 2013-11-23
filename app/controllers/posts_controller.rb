class PostsController < ApplicationController

def new
  @posts = Post.all
  @post = Post.all

end

def create
  @post = Post.new(post_params)
  @post.save
  redirect_to :back
  @posts = Post.all

end
def destroy
  @post = Post.find(params[:id])
  @post.destroy 
  redirect_to posts_path
end
private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
