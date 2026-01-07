class PlanStepsController < ApplicationController
  before_action :set_plan
  before_action :set_targets, only: [:new, :edit]

  def new
    @plan_step = @plan.plan_steps.new
    last_step = @plan.plan_steps.order(:step_number).last
    @plan_step.step_number = last_step ? last_step.step_number + 1 : 1
  end

  def create
    @plan = Plan.find(params[:plan_id])

    if params[:route_data].present?
      create_from_diagnosis
    else
      create_manually
    end
  end

  def destroy
    @plan = Plan.find(params[:plan_id])
    step = @plan.plan_steps.find(params[:id])
    step.destroy
    redirect_to plan_path(@plan)
  end

  def edit
    @plan_step = @plan.plan_steps.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:plan_id])
    @plan_step = @plan.plan_steps.find(params[:id])

    if @plan_step.update(plan_step_params)
      redirect_to plan_path(@plan), notice: '行動ステップを更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_plan
    @plan = current_user.plans.find(params[:plan_id])
  end

  def set_targets
    @targets = Target.all.map do |t|
      {
        id: t.id,
        name: t.name.to_s,
        category: t.category.to_s,
        area: t.area.to_s,
        dpa: !!t.dpa,
        pp: !!t.pp,
        entry_request: !!t.entry_request,
        mobile_order: !!t.mobile_order
      }
    end
  end

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
      route_data.each_with_index do |(_key, _value), index|
        @plan.plan_steps.create!(
          step_number: index + 1,
          action_type_id: action_type_id,
          target_id: target_id,
          time: parsed_time,
          note: memo
        )
      end
    end

    redirect_to plan_path(@plan), notice: '診断ルートを保存しました'
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
