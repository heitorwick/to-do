class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @tasks = current_user.tasks

    # Busca por título ou descrição
    if params[:search].present?
      search = "%#{params[:search]}%"
      @tasks = @tasks.where("title ILIKE ? OR description ILIKE ?", search, search)
    end

    # Filtro de status
    if params[:status] == 'pendente'
      @tasks = @tasks.where(done: false)
    elsif params[:status] == 'concluida'
      @tasks = @tasks.where(done: true)
    end

    # Ordenação
    order = %w[due_date created_at].include?(params[:order]) ? params[:order] : 'created_at'
    @tasks = @tasks.order(order => :asc)
  end

  # GET /tasks/new
  def new
    @task = current_user.tasks.build
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_path, notice: "Tarefa foi criada com sucesso."
    else
      flash.now[:alert] = @task.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Tarefa foi atualizada com sucesso."
    else
      flash.now[:alert] = @task.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Tarefa foi excluída com sucesso."
  end

  private

  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :done)
  end
end
