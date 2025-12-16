class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.plans
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

  private

  def plan_params
    params.require(:plan).permit(:park_id, :date)
  end

end
