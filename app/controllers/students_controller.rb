class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    student
  end

  def edit
    student
  end

  def update
    student
    @student.update(post_params)
    redirect_to student_path(@student)
  end

  private

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def student
    @student = Student.find(params[:id])
  end
end
