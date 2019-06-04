class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def event_params
    params.require(:event).permit(:name, :begin_date, :end_date, :description, :localisation)
  end
end
