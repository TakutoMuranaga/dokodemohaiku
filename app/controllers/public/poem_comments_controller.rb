class Public::PoemCommentsController < ApplicationController
  
  def create
    poem = Poem.find(params[:poem_id])
    @comment = current_user.poem_comments.new(poem_comment_params)
    @comment.poem_id = poem.id
    @comment.save
    redirect_to poem_path(poem)
  end
  
  def destroy
    PoemComment.find(params[:id]).destroy
    redirect_to poem_path(params[:poem_id])
  end
  
  private
  
  def poem_comment_params
    params.require(:poem_comment).permit(:comment)
  end  
  
end
