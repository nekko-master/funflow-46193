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

    if @diagnosis_result[:dpa_attraction]
      create_step(
        step_number: step_number,
        action_type: :dpa,
        target_name: extract_name(@diagnosis_result[:dpa_attraction]),
        note: extract_memo(@diagnosis_result[:dpa_attraction])
      )
      step_number += 1
    end

    if @diagnosis_result[:first]
      create_step(
        step_number: step_number,
        action_type: :ride,
        target_name: @diagnosis_result[:first]
      )
      step_number += 1
    end

    if @diagnosis_result[:pp]
      create_step(
        step_number: step_number,
        action_type: :pp,
        target_name: extract_name(@diagnosis_result[:pp]),
        note: extract_memo(@diagnosis_result[:pp])
      )
      step_number += 1
    end

    if @diagnosis_result[:lunch]
      create_step(
        step_number: step_number,
        action_type: :mobile_order,
        target_name: extract_name(@diagnosis_result[:lunch]),
        note: extract_memo(@diagnosis_result[:lunch]),
        time: extract_time(@diagnosis_result[:lunch])
      )
      step_number += 1
    end

    if @diagnosis_result[:dinner]
      create_step(
        step_number: step_number,
        action_type: :mobile_order,
        target_name: extract_name(@diagnosis_result[:dinner]),
        note: extract_memo(@diagnosis_result[:dinner]),
        time: extract_time(@diagnosis_result[:dinner])
      )
      step_number += 1
    end
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