class TasksController < ApplicationController
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to root_path
      else
        redirect_to root_path
      end
    end
  def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to root_path
  
  end
    private 
      def task_params
        params.require(:task).permit(:item)
      end


end
