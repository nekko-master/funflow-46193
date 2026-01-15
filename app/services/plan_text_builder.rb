class PlanTextBuilder
  APP_ACTION_KEYS = %i[dpa pp mobile_order entry].freeze

  def self.build(plan)
    new(plan).build
  end

  def initialize(plan)
    @plan = plan
  end

  def build
    lines = []

    lines << "【FunFlow プラン】"
    lines << "来園日：#{@plan.date}"
    lines << "パーク：#{@plan.park.name}"
    lines << ""

    steps = @plan.plan_steps.order(:step_number)

    app_actions = steps.select { |s| APP_ACTION_KEYS.include?(s.action_type.key) }
    park_actions = steps.reject { |s| APP_ACTION_KEYS.include?(s.action_type.key) }

    if app_actions.any?
      lines << "★アプリ操作★"
      lines << ""

      app_actions.each do |step|
        lines << "・ #{build_step_text(step)}"
      end

      lines << ""
    end

    if park_actions.any?
      lines << "★周り方★"
      lines << ""

      park_actions.each_with_index do |step, index|
        lines << "#{index + 1} #{build_step_text(step)}"
      end
    end

    lines.join("\n")
  end

  private

  def build_step_text(step)
    text = "#{step.action_type.name}：#{step.target.name}"

    if step.time.present?
      text += "（#{format_time(step.time)}）"
    end

    text
  end

  def format_time(time)
    time.is_a?(String) ? time : time.strftime("%H:%M")
  end
end
