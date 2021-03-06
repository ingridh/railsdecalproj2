class EventsController < ApplicationController
  def index
    #displays all the events
    @events = Event.all
  end

  def new
  end
  
  def show
    #displays the event page
    @event = Event.find(params[:id])
    @comments = @event.comments
    @comment = @event.comments.build(params[:comment])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    render event_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.update_attributes(:user_id => current_user.id)
    saved = @event.save
    if saved
      redirect_to event_path(@event.id)
    else
      flash[:error] = @event.errors.full_messages.to_sentence
      render new_event_path
    end
  end

  # def new_com
  #   1/0
  #   @event.comments.create(event_params)
  #   #@comment.update_attributes(event_params)
  #   @comment.update_attributes(:user_id => current_user.id)
  #   redirect_to create_comment_path
  # end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :datetime)
  end

end
