class DiagnosesController < ApplicationController
  def new
    @plan = Plan.find(params[:plan_id])
  end

  def create
    @plan = Plan.find(params[:plan_id])
    
    @result = DiagnosisService.call(
      focus: params[:focus],
      morning: params[:morning],
      dpa: params[:dpa],
      thrill: params[:thrill]
    )
    
    RouteBuilder.new(@plan, @result).call
    redirect_to plan_path(@plan)
  end


end