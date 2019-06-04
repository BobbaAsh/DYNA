class StatusController < ApplicationController
  def index
    @status = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to status_index_path(@status)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @status.update(status_params)
      redirect_to @status, notice: 'Le status à bien été mis à jour'
    else
      render :edit
    end
  end

  def delete
    @status.destroy
    redirect_to status_index_path, notice: 'Le status à bien été effacé'
  end

  private

  def status_params
    params.require(:status).permit(:name)
  end
end
