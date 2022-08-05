class Api::V1::TarefasController < Api::V1::ApiController
    before_action :set_tarefa, only: [:show, :update, :destroy]
  
    # GET /api/v1/tarefas
    def index
      @tarefas = Tarefa.all
      render json: @tarefas
    end
  
    # GET http://localhost:3000/api/v1/tarefas/1
    def show
      render json: @tarefa
    end
  
    # POST /api/v1/tarefas
    def create
      @tarefa = Tarefa.new(tarefa_params)
  
      if @tarefa.save
        render json: @tarefa, status: :created
      else
        render json: @tarefa.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /api/v1/tarefas/1
    def update
      if @tarefa.update(tarefa_params)
        render json: @tarefa
      else
        render json: @tarefa.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/v1/tarefas/1
    def destroy
      @tarefa.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
  
    def tarefa_params
      params.require(:tarefa).permit(:titulo, :descricao, :concluido, :prioridade)
    end
end
