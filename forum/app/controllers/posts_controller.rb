class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create 
    @group = Group.find(params[:group_id])
    @post = @group.posts.create(post_params)
    redirect_to group_path(@group)
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
