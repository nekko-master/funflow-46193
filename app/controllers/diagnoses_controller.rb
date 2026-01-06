class DiagnosesController < ApplicationController
  def new
    @plan = current_user.plans.find(params[:plan_id])
  end

  def create
    result = DiagnosisService.call(
      focus: params[:focus],
      morning: params[:morning],
      dpa: params[:dpa],
      thrill: params[:thrill]
    )

    steps = RouteBuilder.build(result)
    session[:diagnosis_preview] = steps

    redirect_to preview_plans_path(plan_id: params[:plan_id])
  end

end
