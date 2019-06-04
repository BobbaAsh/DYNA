class TasksController < ApplicationController
  def index
    @taks = Task.all
  end

  def show
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
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

  def task_params
    params.require(:task).permit(:begin_date, :end_date, :description)
  end
end
