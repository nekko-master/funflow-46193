class ActionType < ActiveHash::Base
  self.data = [
    { id: 1, key: :ride, name: 'アトラクションに乗る' },
    { id: 2, key: :show, name: 'パレード/ショーを観る' },
    { id: 3, key: :meal, name: '食事' },
    { id: 4, key: :dpa, name: 'DPA取得' },
    { id: 5, key: :pp, name: 'PP取得' },
    { id: 6, key: :entry, name: 'エントリー受付' },
    { id: 7, key: :mobile_order, name: 'モバイルオーダー' }
  ]

  include ActiveHash::Associations
  has_many :plan_steps

  def self.find_by_key!(key)
    key = key.to_sym if key.respond_to?(:to_sym)

    record = all.find { |a| a.key == key }
    raise ActiveHash::RecordNotFound, "Couldn't find ActionType with key=#{key}" unless record

    record
  end
end
