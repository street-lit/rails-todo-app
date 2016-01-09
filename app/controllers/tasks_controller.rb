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
    render template: 'task/new.html.erb', locals: { task: task }
  end

  def show
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      render template: 'task/show.html.erb', locals: { task: task }
    else
      render template: '/task/error.html.erb'
    end
  end

  def create
    if params[:name].nil? || params[:name].empty?
      render template: '/task/error.html.erb'
    else
      task = Task.new
      task.name = params[:name]
      task.save
      render template: '/task/create.html.erb', locals: { task: task }
    end
  end

  def update
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      task.complete = true
      task.save
      render template: 'task/update.html.erb', locals: { task: task }
    else
      render template: '/task/error.html.erb'
    end
  end

  def destroy
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      task.destroy
      render template: 'task/delete.html.erb', locals: { task: task }
    else
      render template: '/task/error.html.erb'
    end
  end
end
