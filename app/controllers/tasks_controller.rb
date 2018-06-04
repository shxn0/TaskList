class TasksController < ApplicationController

  before_action :set_task, only:[:edit, :update, :destroy, :status]
  before_action :set_submit_btn_name
  before_action :set_form_name

  def index
    @tasks = Task.all.order("created_at DESC")
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def status
    if @task.status == false
      @task.update(status: true)
    else
      @task.update(status: false)
    end
  end

  def search
    @tasks = Task.undone_status.search(params[:search])
  end

  private

    def task_params
      params.require(:task).permit(:task_name, :deadline, :status)
    end

    def set_task
      @task = Task.find(params[:id])
    end

    def set_submit_btn_name
      if params[:action] == "edit"
        @btn_name = "更新"
      else
        @btn_name = "追加"
      end
    end

    def set_form_name
      if params[:action] == "edit"
        @form_name = "ToDoを更新する"
      else
        @form_name = "新しいToDoを作成する"
      end
    end

end
