class DemoController < ApplicationController
  def index
  	# below code render to hello.html.erb
  	# render("hello")
  end

  def hello
  	# receiving  parameters which is passed from hello.html.erb link and storing in respective objects
  	@id = params[:id]
  	@name = params[:name]
  	@page = params[:page]
    
    # Below code redirect the response into index action 
    # controller name is not required if we use in same controller 
  	# redirect_to(:controler => 'demo', :action => 'index')
  end
end
