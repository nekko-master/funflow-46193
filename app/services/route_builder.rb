class RouteBuilder
  def self.build(diagnosis_result)
    new(diagnosis_result).build
  end

  def self.save!(plan:, diagnosis_result:)
    steps = build(diagnosis_result)

    ActiveRecord::Base.transaction do
      steps.each do |step|
        action_type = ActionType.find_by!(key: step[:action_type])

        plan.plan_steps.create!(
          step_number: step[:step_number],
          action_type_id: action_type.id,
          target_id: TargetResolver.resolve(step[:target_name]),
          note: step[:note],
          time: step[:time]
        )
      end
    end
  end

  def initialize(diagnosis_result)
    @diagnosis_result = diagnosis_result || {}
  end

  def build
    steps = []
    step_number = 1

    step_number = append_step(steps, :dpa_attraction, :dpa, step_number, with_time: true)
    step_number = append_step(steps, :dpa_show,       :dpa, step_number, with_time: true) # 2026/1/12追加
    step_number = append_step(steps, :first,          :ride, step_number, with_time: true)
    step_number = append_step(steps, :pp,             :pp, step_number, with_time: true)
    step_number = append_step(steps, :lunch,          :mobile_order, step_number, with_time: true)
    append_step(steps, :dinner, :mobile_order, step_number, with_time: true)

    steps
  end

  private

  def append_step(steps, key, action_type, step_number, with_time: false)
    value = @diagnosis_result[key]
    return step_number if value.blank?

    target_name = extract_name(value)
    return step_number if target_name.blank?

    steps << {
      step_number: step_number,
      action_type: action_type,
      target_name: target_name,
      note: extract_memo(value),
      time: with_time ? extract_time(value) : nil
    }

    step_number + 1
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
