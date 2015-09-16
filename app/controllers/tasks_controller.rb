class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks.to_json, status: 200
  end

  def create

  end

  def destroy

  end
end

# puts "PARAMS => #{params.inspect}"
