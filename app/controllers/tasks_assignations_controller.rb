class TasksAssignationsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @taskassignation = TaskAssignation.new
    if @taskassignation.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
end
