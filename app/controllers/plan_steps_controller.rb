class PlanStepsController < ApplicationController
  def new
    @plan = Plan.find(params[:plan_id])
    @plan_step = PlanStep.new
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @plan_step = @plan.plan_steps.build(plan_step_params)

    if @plan_step.save
      redirect_to plan_path(@plan)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def plan_step_params
    params.require(:plan_step).permit(
      :step_number,
      :action_type_id,
      :target_id,
      :time,
      :note
    )
  end
end
