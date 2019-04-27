class StaticPagesController < ApplicationController
	def home 
		@response = Response.new
	end
end
