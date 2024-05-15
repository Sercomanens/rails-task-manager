class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
