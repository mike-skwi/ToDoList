class TasksController < ApplicationController
    def create
      @task = Task.new(task_params)
      if @task.save
        flash[:notice] = 'Item has been added'

        redirect_to root_path
      else
        flash[:alert] = "Text field cannot be blank"
        redirect_to root_path
      end
    end
  def destroy
      @task = Task.find(params[:id])
      @task.destroy
      flash[:notice] = 'Item has been removed'
      redirect_to root_path
  
  end
    private 
      def task_params
        params.require(:task).permit(:item)
      end


end
