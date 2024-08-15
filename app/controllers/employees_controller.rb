class EmployeesController < ApplicationController
    before_action :authenticate_user!
  
    def new
      @employee = User.new
    end
  
    def create
      @employee = User.new(employee_params)
      @employee.ranch = current_user.ranch # Asocia el empleado con la granja del usuario actual
      if @employee.save
        redirect_to some_path, notice: 'Empleado registrado con éxito'
      else
        render :new
      end
    end
  
    private
  
    def employee_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end
end
  