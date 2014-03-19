class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def new
    
  end
  def create
    @student = Student.new({
      :name => params[:name]
    })
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    
    @student.update_attributes({
      :name => params[:name]
    })
  end
  def delete
    @student = Student.find
  end
end