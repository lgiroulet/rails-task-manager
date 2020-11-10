class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end
end

private

# Pour rendre plus robuste le code, pour que la base de données ne puisse pas être hackée
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
