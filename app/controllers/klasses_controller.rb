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
    
    # Klass.create({
    #   :name => params[:klass], 
    #   :teacher_id => Teacher.find_by_name(params[:teacher]).id
    # })
    # 
    # Semester.create({
    #   :term => params[:klass],
    #   :year => params[:year]
    # })
    
    Klass.create({params[:klass]})
    Semester.create({params[:klass]})
    
    redirect_to(:classes)
  end
  
  def edit
    @klass = Klass.find(params[:id])
  end
  
  def delete
    klass = Klass.find(params[:id])
    
    klass.destroy
    
    redirect_to(:classes)
  end
  
  # def update
  #   @class = Klass.update_attributes[:]
  #   
  #   redirect_to("/")
  # end
  
end