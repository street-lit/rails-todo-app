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
      err_msg = "The 'body' parameter was empty or not found"
      render json: { error_msg: err_msg }.to_json, status: 422
    else
      task = Task.new
      task.name = params[:name]
      task.save
      render json: task.to_json, status: 201
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

# puts "PARAMS => #{params.inspect}"

# Sending a POST request to http://localhost:3000/todos with the params of { "body": "Finish Homework" }
# I should see my todo returned to me as json (Using Postman)











































