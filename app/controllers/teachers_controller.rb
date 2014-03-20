class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    
    unless @teachers.present?
      redirect_to :home
    end
  end
  
  def show
    @teacher = Teacher.find(params[:id])
  end
  
  def new

  end
  def create
    @teacher = Teacher.new({:name => params[:name]})
    
    if @teacher.save
      # Successful saves:
      redirect_to(:teachers)
      
    else
      # The error is:
      render "new"
    end
  end
  
  def edit
    @teacher = Teacher.find(params[:id])
  end
  def update
    @teacher = Teacher.find(params[:id])
    
    @teacher.update_attributes({:name => params[:name]})
    
    redirect_to(teacher_path(@teacher.id))
  end
  
  def delete
    @teacher = Teacher.find(params[:id])
    
    @teacher.delete
    
    redirect_to(:teachers)
  end
end