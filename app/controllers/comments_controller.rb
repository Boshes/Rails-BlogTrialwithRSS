class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:id])
    @comment.save
    redirect_to @post

  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to @post}
      format.json {head :no_content}
    end
  end


  end
