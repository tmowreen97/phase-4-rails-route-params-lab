class StudentsController < ApplicationController
  
  def index
    students = Student.all
    if (params.include?(:first_name))==true
      student = Student.where('first_name=?',params[:first_name])
      render json: student
    elsif (params.include?(:last_name))==true
      student = Student.where('last_name=?',params[:last_name])
      render json: student
    else 
        render json: students
    end
  
  end

  def find_student
    student = Student.find(params[:id])
    render json: student
  end

end
