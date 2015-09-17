class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks.to_json, status: 200
  end

  def new
    task = Task.new
    render json: task.to_json, status: 200
  end

  def show
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      render json: task.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def create
    if params[:name].nil? || params[:name].empty?
      err_msg = "The 'name' parameter was empty or not found"
      render json: { error_msg: err_msg }.to_json, status: 422
    else
      task = Task.new
      task.name = params[:name]
      task.save
      render json: task.to_json, status: 201
    end
  end

  def update
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      task.complete = true
      task.save
      render json: task.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def destroy
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      task.destroy
      render json: { message: "Task deleted successfully." }, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end
end












































