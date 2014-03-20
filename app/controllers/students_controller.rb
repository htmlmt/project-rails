class StudentsController < ApplicationController

  def index
    @students = Student.all || 0
    if @students == 0
      redirect_to :home
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    
  end
  def create
    @student = Student.new({:name => params[:name]})
    
    if @student.save
      # Successful saves:
      redirect_to(:students)
      
    else
      # The error is:
      render "new"
    end
  end
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    
    @student.update_attributes({
      :name => params[:name]
    })
    
    redirect_to(student_path(@student.id))
  end
  
  def delete
    @student = Student.find
    
    @student.delete
    
    redirect_to(:students)
  end
end