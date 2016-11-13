class StepsController < ApplicationController

	def index
		
	end

	def show
		step = Step.new(params.require(:a).permit(:name, :description, :header_line))
		step.save
		redirect_to :action => 'index'
	end

	def create
	end
end
