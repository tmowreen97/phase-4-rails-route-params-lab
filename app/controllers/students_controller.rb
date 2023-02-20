class StudentsController < ApplicationController
  
  # def index
  #   students = Student.all
  #   students_with_name=[]
  #   if params[:name]
  #     name = params[:name].capitalize()
  #     students_with_name.push(Student.where('first_name=?', name))
  #     students_with_name.push(Student.where('last_name=?', name))
  #     render json: students_with_name.flatten!
  #   else
  #     render json: students
  #   end


  #   # if (params.include?(:first_name))==true
  #   #   student = Student.where('first_name=?',params[:first_name])
  #   #   render json: student
  #   # elsif (params.include?(:last_name))==true
  #   #   student = Student.where('last_name=?',params[:last_name])
  #   #   render json: student
  #   # else 
  #   #     render json: students
  #   # end
  
  # end

  # def find_student
  #   student = Student.find(params[:id])
  #   render json: student
  # end


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
