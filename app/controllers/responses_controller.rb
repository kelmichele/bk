class ResponsesController < ApplicationController
	before_action :set_response, only: [:edit, :show, :update, :destroy]

	def index
    @responses = Response.all
  end

  def show
  end

  def new
    @response = Response.new
  end

  def edit
  end


  def create
    @response = Response.new(response_params)

    if @response.save
      ResponseMailer.new_response(@response).deliver unless response_params[:honey].present?
      redirect_to root_path, notice: "Your RSVP has been sent. Thank you!"
    else
      render 'new'
    end
  end

  def update
    if @response.update(response_params)
      redirect_to @response
    else
      render 'edit'
    end
  end

  def destroy
    Response.find(params[:id]).destroy
    flash[:success] = "RSVP was successfully deleted!"
    redirect_to root_path
  end

  private
  def set_response
		@response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit(:name, :status, :guest_count, :honey)
  end
end
