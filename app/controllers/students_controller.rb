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
  end 
end 