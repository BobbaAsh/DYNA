class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
    @participation = Participation.find(params[:participation_id])
  end

  def new
    @document = Document.new
    @participation = Participation.find(params[:participation_id])
  end

  def create
    @participation = Participation.find(params[:participation_id])
    @document = Document.new(documents_params)
    @document.participation_id = @participation.id
    @event = @participation.event

    if @document.save
      redirect_to event_participations_path(@event)
    else
    render :new
    end

  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
  end

  def delete
  end


private

  def documents_params
    params.require(:document).permit(:name, :url, :photo, )
    # params.require(:user).permit()
  end
end
