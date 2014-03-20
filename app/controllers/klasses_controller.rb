class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
  end
  
  def show
    @klass = Klass.find(params[:id])
  end
  
  def new
  end
  
  def create
    @teachers = Teacher.all
    
    Klass.create({
      :name => params[:name]
    })
    
    Semester.create({
      :term => params[:term]
      :year => params[:year]
    })
    
    Teacher.update_attribute({:class_id => params[:teacher]})
    
    redirect_to(:classes)
  end
  
  def edit
    @klass = Klass.find(params[:id])
  end
  
  def delete
    klass = Klass.find(params[:id])
    
    klass.delete
    
    redirect_to(:classes)
  end
end