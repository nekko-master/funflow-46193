class ActionType < ActiveHash::Base
 self.data = [
  { id: 1, name: 'アトラクションに乗る' },
  { id: 2, name: 'パレード/ショーを観る' },
  { id: 3, name: '食事' },
  { id: 4, name: 'DPA取得' },
  { id: 5, name: 'PP取得' },
  { id: 6, name: 'エントリー受付' },
  { id: 7, name: 'モバイルオーダー' }
 ]

 include ActiveHash::Associations
 has_many :plan_steps

end