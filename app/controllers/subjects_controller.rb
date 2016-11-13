class SubjectsController < ApplicationController
  
  layout :false

  def index
  	@subjects = Subject.sorted
  end

  def show
 	@subject = Subject.find(params[:id])
  end

  def edit
  	@subject = Subject.find(params[:id])
  end

  def new
  	@subject = Subject.new()
  end

  def create
  	#intitate the Object  and assign value with form attribuets
  	@subject = Subject.new(subject_params)
  	#saving the object
  	if @subject.save
  	   # redirect to index action
  	   flash[:notice] = "Subject was created sucessfully"	
  	   redirect_to(:action => 'index')
  	else
  		#render to the form
  		render('new')
  	end
  end

  def update
  	#find the record by using id
  	@subject = Subject.find(params[:id])
  	#update the object
  	if @subject.update_attributes(subject_params)
  	   # redirect to show action	
  	   flash[:notice] = "Subject was update sucessfully"
  	   redirect_to(:action => 'show',:id => @subject.id)
  	else
  		#render to the form
  		render('new')
  	end
  end

  def destroy
  	@subject = Subject.find(params[:id])
  	@subject.destroy
  	redirect_to(:action => 'index')
  end	  	

private

  def subject_params
  	params.require(:subject).permit(:name,:visibility,:position)
  end



end

