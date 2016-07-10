class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "Thêm bình luận thành công"
    else
      flash[:notice] = @comment.errors.full_messages.to_sentence
    end
    redirect_to "/items/#{@comment.item_id}"
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :content, :rate, :item_id)
    end
end
