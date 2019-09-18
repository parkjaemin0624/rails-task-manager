class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end


#1. rails new
#2. ga and gc
#3. hub create
#4. make tables
#5. rails g model     it creates migration file and model file
#6. rails db:migrate
# rails console
