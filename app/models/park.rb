class Park < ActiveHash::Base
 self.data = [
   { id: 1, name: 'ディズニーランド' },
   { id: 2, name: 'ディズニーシー' },
 ]

 include ActiveHash::Associations
 has_many :plans

end