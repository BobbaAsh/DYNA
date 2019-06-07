class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def index_manager
    @events = current_user.events
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to index_manager_events_path(current_user)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  def delete
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :begin_date, :end_date, :description, :localisation, :user_id)
  end
end
