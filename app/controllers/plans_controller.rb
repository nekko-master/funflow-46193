class PlansController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @plans = current_user.plans.order(date: :asc) if user_signed_in?
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

  # =====================
  # プレビュー画面
  # =====================

  def preview
    preview_data = session[:diagnosis_preview]
    return redirect_to root_path, alert: '診断データがありません' unless preview_data

    # 保存前のプランを作成
    @plan = Plan.new(
      park_id: params[:park_id], # 選んだ park_id を仮に入れる
      date: params[:date]        # 日付も入れたい場合は params[:date] から
    )

    # プレビュー用の park 名を安全に取得
    @park_name = @plan.park&.name || 'ディズニーシー'

    # plan_steps を作成（DB 保存はしない）
    @plan_steps = preview_data.map do |step|
      PlanStep.new(
        step_number: step['step_number'],
        action_type: ActionType.find_by_key!(step['action_type']),
        target: Target.find_by!(name: step['target_name']),
        note: step['note'],
        time: step['time']
      )
    end
  end

  # =====================
  # プレビューから保存
  # =====================
  def save_from_preview
    preview_data = session[:diagnosis_preview]
    return redirect_to root_path, alert: '診断データがありません' unless preview_data

    plan = current_user.plans.find(params[:plan_id])

    ActiveRecord::Base.transaction do
      # 既存のおすすめルートを削除
      plan.plan_steps.destroy_all

      # プレビュー内容を保存
      preview_data.each do |step|
        plan.plan_steps.create!(
          step_number: step['step_number'],
          action_type_id: ActionType.find_by_key!(step['action_type']).id,
          target_id: Target.find_by!(name: step['target_name']).id,
          note: step['note'],
          time: step['time']
        )
      end
    end

    session.delete(:diagnosis_preview)
    redirect_to plan_path(plan), notice: 'おすすめの流れを保存しました'
  end

  def show
    @plan = current_user.plans.find(params[:id])
  end

  def destroy
    plan = current_user.plans.find(params[:id])
    plan.destroy
    redirect_to plans_path, notice: 'プランを削除しました'
  end

  def edit
    @plan = current_user.plans.find(params[:id])
  end

  def update
    @plan = current_user.plans.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plan_path(@plan), notice: 'プランを更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:park_id, :date)
  end
end
