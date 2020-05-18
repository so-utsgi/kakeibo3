class PostsController < ApplicationController
  def index  
    @post=Post.new
    @posts=Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_path
  end
  
  private
    # ストロングパラメータ
    def post_params
      params.require(:post).permit(:price, :date, :category)
    end

  
end
