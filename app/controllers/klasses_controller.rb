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