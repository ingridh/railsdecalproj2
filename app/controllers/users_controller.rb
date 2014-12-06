class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @events = @user.events
    # @event = @user.events.build(params[:event])
    # @going_to = []
    # 1/0
    # @user.comments.each do |comment|
    #   if comment.attending
    #     @going_to << Event.find(comment.event_id)
    #   end
    # 1/0

    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
  
end
