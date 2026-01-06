class RouteBuilder
  def self.call(plan:, diagnosis_result:)
    new(plan, diagnosis_result).call
  end

  def initialize(plan, diagnosis_result)
    @plan = plan
    @diagnosis_result = diagnosis_result
  end

  def call
    ActiveRecord::Base.transaction do
      build_steps
    end
  end

  private

  def build_steps
    step_number = 1

    build_step(:dpa_attraction, :dpa, step_number) && step_number += 1
    build_step(:first,          :ride, step_number) && step_number += 1
    build_step(:pp,             :pp, step_number) && step_number += 1
    build_step(:lunch,          :mobile_order, step_number, with_time: true) && step_number += 1
    build_step(:dinner,         :mobile_order, step_number, with_time: true) && step_number += 1
  end

  def build_step(key, action_type, step_number, with_time: false)
    value = @diagnosis_result[key]
    return false if value.nil?

    target_name = extract_name(value)
    return false if target_name.blank?

    create_step(
      step_number: step_number,
      action_type: action_type,
      target_name: target_name,
      note: extract_memo(value),
      time: with_time ? extract_time(value) : nil
    )

    true
  end



  def create_step(step_number:, action_type:, target_name:, note: nil, time: nil)
    @plan.plan_steps.create!(
      step_number: step_number,
      action_type_id: ActionType.find_by(key: action_type).id,
      target_id: TargetResolver.resolve(target_name),
      note: note,
      time: time
    )
  end

  def extract_name(value)
    value.is_a?(Hash) ? value[:name] : value
  end

  def extract_memo(value)
    value.is_a?(Hash) ? value[:memo] : nil
  end

  def extract_time(value)
    value.is_a?(Hash) ? value[:time] : nil
  end
end