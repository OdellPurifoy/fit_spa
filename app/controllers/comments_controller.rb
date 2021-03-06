class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params.require(:comment).permit(:name, :body))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
