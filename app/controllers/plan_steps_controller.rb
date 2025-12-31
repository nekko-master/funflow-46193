class PlanStepsController < ApplicationController
  def new
    @plan = Plan.find(params[:plan_id])
    @plan_step = PlanStep.new
  end

  def create
    @plan = Plan.find(params[:plan_id])

    if params[:route_data].present?
      create_from_diagnosis
    else
      create_manually
    end
  end

  private


  def create_manually
    @plan_step = @plan.plan_steps.build(plan_step_params)

    if @plan_step.save
      redirect_to plan_path(@plan)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def create_from_diagnosis
    route_data = JSON.parse(params[:route_data])

    ActiveRecord::Base.transaction do
      route_data.each_with_index do |(key, value), index|
        @plan.plan_steps.create!(
          step_number: index + 1,
          action_type_id: action_type_id,
          target_id: target_id,
          time: parsed_time,
          note: memo
        )
      end
    end

    redirect_to plan_path(@plan), notice: "診断ルートを保存しました"
  end


  def format_value(value)
    if value.is_a?(Hash)
      value.map { |k, v| "#{k}: #{v}" }.join("\n")
    else
      value.to_s
    end
  end


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
