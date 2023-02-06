class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    students_by_id = Student.find_by(id: params[:id])
    render json: students_by_id
  end
end
