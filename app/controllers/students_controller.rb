class StudentsController < ApplicationController
  
  def show 
    student = Student.find(params[:id])
    render json: student, status: :ok
  end

  def index
    if params[:name]
      student = Student.where("first_name = ? or last_name = ?", params[:name].capitalize(), params[:name].capitalize())
      render json: student, status: :ok
    else
      students = Student.all
      render json: students, status: :ok
    end
  end

end
