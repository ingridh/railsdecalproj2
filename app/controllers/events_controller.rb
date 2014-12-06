class EventsController < ApplicationController
  def index
    #displays all the events
    @events = Event.all
  end

  def new
    #@event = Event.new
    #@user = current_user
  end
  
  def show
    #displays the event page
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    render events_show_path(@event)
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
      render user_path(current_user)
    end
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :datetime)
  end

end
