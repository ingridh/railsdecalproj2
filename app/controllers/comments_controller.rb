class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    render events_show_path(@comment.event_id)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.update_attributes(:user_id => current_user.id)
    saved = @comment.save
    if saved
      redirect_to events_show_path(@comment.event_id)
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
      render comments_new_path
    end
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to events_show_path(@comment.event_id)
  end

  def comment_params
    params.require(:event).permit(:attending)
  end

end

