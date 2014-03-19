class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
    @spring = Klass.semester.find_by_term("Spring")
    @fall = Klass.semester.find_by_term("Fall")
  end
  
  def show
    @klass = Klass.find(params[:id])
  end
  
  def new
  end
  
  def create
    
    
    params[:number].times do 
      Klass.create({:name => params[:name]})
    
      @grades = []
      @names = []
    
      
    end
    
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