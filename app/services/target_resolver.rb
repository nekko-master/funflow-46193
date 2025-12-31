class TargetResolver
  def self.resolve(name)
    target = Target.find_by(name: name)
    raise "Target not found: #{name}" unless target
    target.id
  end
end
