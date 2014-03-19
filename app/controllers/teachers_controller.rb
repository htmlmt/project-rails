class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  
  def show
    @teacher = Article.find(params[:id])
  end
  
  def new

  end
  def create
    @teacher = Teacher.new({:name => params[:name], :class_id=>params[:class_id]})
    
    if @teacher.save
      # Successful saves:
      redirect_to(:)
      
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
    
    @teacher.update_attributes({:name => params[:name], :class_id=>params[:class_id]})
    
    redirect_to(article_path(@teacher.id))
  end
  
  def delete
    @teacher = Teacher.find(params[:id])
    
    @teacher.delete
    
    redirect_to(:)
  end
end