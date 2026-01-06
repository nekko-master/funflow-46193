class PlansController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
      @plans = current_user.plans.order(date: :asc)
    end
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)

    if @plan.save
      redirect_to new_diagnosis_path(plan_id: @plan.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def preview
    steps = session[:diagnosis_preview]
    return redirect_to root_path, alert: "診断データがありません" unless steps

    @plan = current_user.plans.find(params[:plan_id])

    @plan_steps = steps.map do |step|
      PlanStep.new(
        step_number: step["step_number"],
        action_type: ActionType.find_by_key!(step["action_type"]),
        target: Target.find_by!(name: step["target_name"]),
        note: step["note"],
        time: step["time"]
      )
    end
  end


  def save_from_preview
    steps = session[:diagnosis_preview]
    return redirect_to root_path, alert: "診断データがありません" unless steps

    base_plan = current_user.plans.find(params[:plan_id])

    ActiveRecord::Base.transaction do
      steps.each do |step|
        base_plan.plan_steps.create!(
          step_number: step["step_number"],
          action_type_id: ActionType.find_by_key!(step["action_type"]).id,
          target_id: Target.find_by!(name: step["target_name"]).id,
          note: step["note"],
          time: step["time"]
        )
      end
    end

    session.delete(:diagnosis_preview)
    redirect_to plan_path(base_plan), notice: "プランを保存しました"
  end


  def show
    @plan = current_user.plans.find(params[:id])
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path, notice: "プランを削除しました"
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plan_path(@plan), notice: "プランを更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:park_id, :date)
  end

end
