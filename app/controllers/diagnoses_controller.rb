class DiagnosesController < ApplicationController
  def new
  end

  def create
    @result = DiagnosisService.call(
      focus: params[:focus],
      morning: params[:morning],
      dpa: params[:dpa],
      thrill: params[:thrill]
    )
    render :result
  end


end