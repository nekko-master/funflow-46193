class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.plans.order(date: :asc)
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.build(plan_params)
    if @plan.save
      redirect_to @plan
    else
      render :new, status: :unprocessable_entity
    end
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
