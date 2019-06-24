class ParticipationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @event = Event.find(params[:event_id])
    @participations = Participation.where(event_id: @event.id)
    @document = Document.new
  end

  def index_my_participation
    @events = current_user.events
    @participations = Participation.where(user_id: current_user)
  end

  def show
    @participation = Participation.find(params[:id])
  end

  # def new
  #   @participation = Participation.new
  #   @event = Event.find(params[:event_id])
  # end

  def accept
    @event = Event.find(params[:event_id])
    @participation = Participation.find(params[:id])
    @participation.status = true
    @participation.save
    redirect_to event_participations_path
  end

  def decline
    @event = Event.find(params[:event_id])
    @participation = Participation.find(params[:id])
    @participation.status = false
    @participation.save
    redirect_to event_participations_path
  end

  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user
    @event = Event.find(params[:event_id])
    @participation.event = @event
    if @participation.save

      redirect_to event_participation_path(params[:event_id], @participation.id)
    else
      render :new
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:wanted_status, :status)
  end
end
