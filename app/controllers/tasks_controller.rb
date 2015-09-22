class TasksController < ApplicationController

  def index
    tasks = Task.all.order(id: :asc)
    respond_to do |f|
      f.html do
        render template: 'task/index.html.erb', locals: { tasks: tasks }
      end
      f.json do
        render json: tasks.to_json, status: 200
      end
    end
  end

  def new
    task = Task.new
    render template: 'task/create.html.erb', locals: { task: task }
  end

  def show
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      render template: 'task/show.html.erb', locals: { task: task }
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












































