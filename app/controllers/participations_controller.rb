class ParticipationsController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def new
    @participation = Participation.new
    @event = Event.find(params[:event_id])
  end

  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user
    @event = Event.find(params[:event_id])
    @participation.event = @event
    if @participation.save
      redirect_to event_path(@participation.event)
    else
      render :new
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:wanted_status)
  end
end
