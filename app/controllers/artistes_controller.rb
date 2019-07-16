class ArtistesController < ApplicationController
  def index
    @artistes = Artiste.all
  end

  def show
    @event = Event.find(params[:event_id])
    @artiste = Artiste.find(params[:id])
    @document = Document.new
  end

  def new
    @artiste = Artiste.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @artiste = Artiste.new(artiste_params)
    @artiste.event = @event
    if @artiste.save
      redirect_to index_manager_events_path(current_user)
    else
      render :new
    end
  end

  private

  def artiste_params
    params.require(:artiste).permit(:name, :numberofmember, :contact, :price, :event_id)
  end
end
